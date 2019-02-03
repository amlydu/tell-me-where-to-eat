require 'http'
require 'json'

module ExternalApis
  class Yelp
    ### Endpoint Information ###
    #
    API_HOST = 'https://api.yelp.com'
    RESULT_LIMIT = 10

    API_ENDPOINTS = {
        businesses_search: '/v3/businesses/search',
        businesses: '/v3/businesses/'
    }.freeze

    ### Default Yelp search params ###
    #
    DEFAULT_SEARCH_PARAMS = [
        TERM = 'restaurants',
        LOCATION = 'Denver, CO',
        SEARCH_LIMIT = 35,
        PRICE_STRING='1, 2, 3, 4',
        MAX_RADIUS= 24
    ].freeze

    ### Internal String Constants ###
    #
    PRICE_MAP = {
        'cheap_eats' => '1',
        'moderate_spender' => '2',
        'treat_yoself' => '3',
        'whole_paycheck' => '4'
    }.freeze

    SORTING_STRINGS = [
        RATING = 'rating',
        REVIEW_COUNT = 'review_count',
        PRICE = 'price'
    ].freeze

    FILTER_STRINGS = [
        HIGH_RATING = 'high_rating',
        MED_RATING = 'medium_rating',
        LOW_RATING = 'low_rating'
    ].freeze

    # Args:
    #   params: (Hash)
    #     location: (String)
    #     term: (String)
    #     open_now: (Boolean)
    #     radius: (Integer)
    #     price: (String)
    #     sort_by: (String)
    #     filter_by: (String)
    #
    def search_for_restaurants(params: {}, result_limit: RESULT_LIMIT)
      yelp_params         = create_yelp_params(params)
      parsed_response     = yelp_api_get_request_parsed_response(yelp_params)
      returned_businesses = parsed_response['businesses']
      returned_businesses = sort_and_filter(params, returned_businesses)

      returned_businesses.first(result_limit)
    end

    def tell_me_where_to_eat(params: {})
      results = search_for_restaurants(params: params, result_limit: SEARCH_LIMIT)

      results.sample
    end

    private

    def sort_and_filter(params, results)
      if results.present?
        if params[:sort_by].present?
          results = sort(params[:sort_by], results)
        end

        if params[:filter_by].present?
          results = filter(params[:filter_by], results )
        end
      end

      results
    end

    # Args
    # filter_string (String)
    #   'high_rating' High to Low will filter out all results that are less than a 4
    #   'medium_rating' Most to Least will filter out all results that are less than a 3
    #   'low_rating' Low to High will filter out all results that are greater than a 3
    # results (Array)
    def filter(filter_string, results)
      return unless FILTER_STRINGS.include? filter_string

      case filter_string
      when HIGH_RATING
        results = results.select { |result| (result[RATING] || 0) >= 4 }
      when MED_RATING
        results = results.select { |result| (result[RATING] || 0) >= 3 }
      when LOW_RATING
        results = results.select { |result| (result[RATING] || 0) <= 3 }
      end

      results
    end

    # Args
    # sort_string (String)
    #   'rating' High to Low
    #   'review_count' Most to Least
    #   'price' Low to High
    # results (Array)
    def sort(sort_string, results)
      return unless SORTING_STRINGS.include? sort_string

      sorted_results = sort_in_ascending_order(sort_string, results)

      case sort_string
      when RATING, REVIEW_COUNT
        sort_in_descending_order(sorted_results)
      else
        sorted_results
      end
    end

    def sort_in_ascending_order(sort_string, results)
      results = select_businesses_w_sorted_value_available(sort_string, results)

      results.sort_by do |result|
        result[sort_string]
      end
    end

    def select_businesses_w_sorted_value_available(sort_string, results)
      results.select { |result| result[sort_string].present? }
    end

    def sort_in_descending_order(sorted_results)
      sorted_results.reverse
    end

    # Arguments passed through to Yelp API (https://www.yelp.com/developers/documentation/v3/business_search)
    #   price: (String): Optional.
    #       Pricing levels to filter the search result with: 1 = $, 2 = $$, 3 = $$$, 4 = $$$$.
    #           $ =   under $10
    #           $$ = $11-$30
    #           $$$ = $31-$60
    #           $$$$ = above $61
    #       The price filter can be a list of comma delimited pricing levels.
    #       For example, "1, 2, 3" will filter the results to show the ones that are $, $$, or $$$.
    #   open_now: (Boolean) Optional.
    #       Default to false. When set to true, only return the businesses open now. Notice that open_at and open_now
    #       cannot be used together.
    #   radius: (Int) Optional.
    #       A suggested search radius in meters. This field is used as a suggestion to the search.
    #       The actual search radius may be lower than the suggested radius in dense urban areas, and higher in regions
    #       of less business density. If the specified value is too large, a AREA_TOO_LARGE error may be returned.
    #       The max value is 40000 meters (about 25 miles).
    #   limit: (Int) Optional.
    #       Number of business results to return. By default, it will return 20. Maximum is 50.
    #   location: (String) Required if either latitude or longitude is not provided.
    #       This string indicates the geographic area to be used when searching for businesses.
    #       Examples: "New York City", "NYC", "350 5th Ave, New York, NY 10118".
    #       Businesses returned in the response may not be strictly within the specified location.
    #   term: (String) Optional.
    #       Search term, for example "food" or "restaurants". The term may also be business names, such as "Starbucks".
    #       If term is not included the endpoint will default to searching across businesses from a small number of
    #       popular categories.
    def create_yelp_params(updated_params = {})
      updated_params = format_params!(updated_params)

      # Defaulting Required Params
      yelp_params = {
          limit: updated_params[:limit].presence || SEARCH_LIMIT,
          location: updated_params[:location].presence || LOCATION,
          term: updated_params[:term].presence || TERM
      }

      # Explictly adding Optional params
      yelp_params[:price]    = updated_params[:price] if updated_params[:price].present?
      yelp_params[:open_now] = updated_params[:open_now] if updated_params[:open_now].present?
      yelp_params[:radius]   = updated_params[:radius] if updated_params[:radius].present?

      yelp_params
    end

    def format_params!(params)
      params = format_price(params)
      params = convert_radius_miles_to_meters(params)

      params
    end

    # Returns a strings formatted in the way that the Yelp API is expecting
    #
    # Args:
    #   params (Hash)
    #   ex) {price: "cheap_eats, moderate_spender, treat_yourself"}
    # Usage:
    #   format_price({price:"cheap_eats, moderate_spender, treat_yourself"})
    #   => {price:'1,2,3'}
    def format_price(params)
      price_params = params[:price]

      if price_params.present?
        price_string   = convert_to_yelp_pricing_string(price_params).presence || PRICE_STRING
        params[:price] = price_string
      end

      params
    end

    def convert_to_yelp_pricing_string(price_string)
      pricing_string = price_string.dup.split(",").map do |str|
        str.strip!
        PRICE_MAP[str]
      end

      pricing_string&.compact&.join(',')
    end

    # Returns an Integer representing miles in meters in the way that the Yelp API is expecting
    #
    # Args:
    #   params (Hash)
    # Usage:
    #   convert_radius_miles_to_meters({radius: "5"})
    #   => {radius: 8046}
    def convert_radius_miles_to_meters(params)
      params_radius = params[:radius]

      if params_radius.present?
        radius = params_radius.dup
        radius = radius.to_i.zero? ? MAX_RADIUS : radius.to_i
        meters = (radius * 1609.34).floor

        params[:radius] = meters
      end

      params
    end

    def yelp_api_get_request_parsed_response(yelp_params)
      response        = get_request_to_yelp_api(yelp_params)
      parsed_response = response.parse

      if response.status.ok?
        parsed_response
      else
        raise CustomException::Apis::UnableToGetResults.new(response.status.reason, response.status.code, parsed_response['error'])
      end
    end

    def get_request_to_yelp_api(yelp_params)
      HTTP.auth("Bearer #{ENV['YELP_API_KEY']}").get(url, params: yelp_params)
    end

    # Args
    #   endpoint: (Symbol)
    #     :businesses_search
    #     :businesses
    def url(endpoint: :businesses_search)
      "#{API_HOST}#{API_ENDPOINTS[endpoint]}"
    end
  end
end
