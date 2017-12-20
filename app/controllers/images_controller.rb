require 'net/http'

class ImagesController < ApplicationController
  URL = 'http://54.152.221.29/images.json'

  before_action :update

  # GET /images
  # GET /images.json
  def index
    @images = Image.all
    render json: @images.to_json, status: :ok
  end

  private

  def update
    json = get
    images = json['images'].map { |url| Image.new(url) }
    images.each(&:set_vals)
  end

  def get
    uri = URI.parse(URL)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
end
