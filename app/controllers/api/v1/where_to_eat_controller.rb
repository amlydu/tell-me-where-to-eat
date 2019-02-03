module Api
  module V1
    class WhereToEatController < ApplicationController
      before_action :save_search_and_increment_count

      def options
        response = yelp_service.search_for_restaurants(params: params)

        json_response(response)
      end

      def just_tell_me
        response = yelp_service.tell_me_where_to_eat(params: params)

        json_response(response)
      end

      private

      def save_search_and_increment_count
        Search.where(query: request.url).first_or_create.increment!(:query_count)
      end

      def yelp_service
        ExternalApis::Yelp.new
      end
    end
  end
end
