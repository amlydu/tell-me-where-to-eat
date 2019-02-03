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
    }

    ### Default Yelp search params ###
    #
    DEFAULT_SEARCH_PARAMS = [
        TERM = 'restaurants',
        LOCATION = 'Denver, CO',
        SEARCH_LIMIT = 35,
        PRICE_STRING='1, 2, 3, 4',
        MAX_RADIUS= 24
    ]
  end
end
