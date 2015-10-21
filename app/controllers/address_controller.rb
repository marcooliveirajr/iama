class AddressController < ApplicationController
  # GET /address/search
  def search_postal_code
    @address = ::Address::Finder.new.find_by_postal_code(params[:postal_code]) || {}
    render json: @address.to_json
  end
end
