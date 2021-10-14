require 'rails_helper'

RSpec.describe VehiclesController, type: :controller do
  describe 'GET index' do
    let(:vehicle) { create(:vehicle) }

    it 'returns a list of vehicles' do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET download_csv' do
    let(:vehicle) { create(:vehicle) }

    it 'returns a list of vehicles' do
      get :download_csv, format: "csv"
      expect(response).to have_http_status(200)
    end
  end
end
