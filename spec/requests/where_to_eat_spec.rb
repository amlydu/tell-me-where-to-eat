require "rails_helper"

#
# https://relishapp.com/rspec/rspec-rails/docs/request-specs/request-spec
#
RSpec.describe "Requesting where to eat", :type => :request do
  let(:response_json){ JSON.parse(response.body) }

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
      expect{  get '/api/v1/where_to_eat/options' }.to change{ Search.count }.from(0).to(1)
    end
  end
end
