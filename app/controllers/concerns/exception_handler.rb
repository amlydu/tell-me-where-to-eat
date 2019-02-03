module ExceptionHandler
  # provides the more graceful `included` method
  extend ActiveSupport::Concern

  included do
    rescue_from CustomException::Apis::UnableToGetResults do |e|
      json_response(e.message_hash, :unprocessable_entity)
    end
  end
end
