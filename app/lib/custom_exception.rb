module CustomException
  module Apis
    class UnableToGetResults < StandardError
      attr_reader :response_status, :response_code, :additional_error_info

      def initialize(response_status, response_code, additional_error_info = 'None Provided')
        @response_status       = response_status
        @response_code         = response_code
        @additional_error_info = additional_error_info
      end

      def message_hash
        {
            error: {
                status_code: response_code,
                status_reason: response_status,
                external_api_information: additional_error_info
            }
        }
      end
    end
  end
end
