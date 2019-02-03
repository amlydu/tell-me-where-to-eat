require "rails_helper"

#
# https://relishapp.com/rspec/rspec-rails/docs/request-specs/request-spec
#
RSpec.describe "Requesting where to eat", :type => :request do
  let(:response_json){ JSON.parse(response.body) }
  let(:http_response_mock){ OpenStruct.new(parse: {}, status: OpenStruct.new(ok?: false, code: 400, reason: 'Bad Request')) }

  describe 'GET  /api/v1/where_to_eat/options' do
    context 'successful call with Default search params' do
      before :each do
        allow_any_instance_of(ExternalApis::Yelp).to receive(:yelp_api_get_request_parsed_response)
                                                         .and_return(YelpStubs.payload(:request_with_defaults))

        get '/api/v1/where_to_eat/options'
      end

      it 'returns an array distilled down to (and up to) 10 options' do
        expect(response_json).not_to be_empty
        expect(response_json.size).to eq(10)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    it 'creates a new Search and increments counter' do
      expect{  get '/api/v1/where_to_eat/options' }.to change{ Search.count }.from(0).to(1)
    end

    context 'Unsuccessful call due to errors returned from Yelp API' do
      before do
        allow_any_instance_of(ExternalApis::Yelp).to receive(:get_request_to_yelp_api).and_return(http_response_mock)

        get '/api/v1/where_to_eat/options'
      end

      it 'returns a 422 Unprocessable Entity to the caller' do
        expect(response.status).to eq(422)
      end

      it 'returns json indicating an error occurred' do
        expect(response_json).not_to be_empty
        expect(response_json['external_api']['status_code']).to eq(400)
        expect(response_json['external_api']['status_reason']).to eq('Bad Request')
        expect(response_json['error']).to eq('CustomException::Apis::UnableToGetResults')
      end
    end
  end

  # Test suite for GET /just_tell_me
  describe 'GET  /api/v1/where_to_eat/just_tell_me' do
    context 'successful call with Default search params' do
      before do
        allow_any_instance_of(ExternalApis::Yelp).to receive(:yelp_api_get_request_parsed_response)
                                                         .and_return(YelpStubs.payload(:request_with_defaults))

        get '/api/v1/where_to_eat/just_tell_me'
      end

      it 'returns only 1 result' do
        expect(response_json).not_to be_empty
        expect(response_json).to be_a(Hash)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    it 'creates a new Search and increments counter' do
      expect{  get '/api/v1/where_to_eat/just_tell_me' }.to change{ Search.count }.from(0).to(1)
    end

    context 'Unsuccessful call due to errors returned from Yelp API' do
      before do
        allow_any_instance_of(ExternalApis::Yelp).to receive(:get_request_to_yelp_api).and_return(http_response_mock)

        get '/api/v1/where_to_eat/just_tell_me'
      end

      it 'returns a 422 Unprocessable Entity to the caller' do
        expect(response.status).to eq(422)
      end

      it 'returns json indicating an error occurred' do
        expect(response_json).not_to be_empty
        expect(response_json['external_api']['status_code']).to eq(400)
        expect(response_json['external_api']['status_reason']).to eq('Bad Request')
        expect(response_json['error']).to eq('CustomException::Apis::UnableToGetResults')
      end
    end
  end
end
