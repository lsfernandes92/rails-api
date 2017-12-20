require 'rails_helper'

RSpec.describe ImagesController, type: :request do

  describe "GET #index" do
    before { get '/images' }

    it "returns http success" do
      expect(response).to have_http_status(200)
    end

    it "json should return 10 items" do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it "html should show the page" do
      expect(response.body).not_to be_empty
    end

    it "returns data of an single student" do
      expect(response.body).to include("url", "size", "small", "medium", "large")
    end
  end

end
