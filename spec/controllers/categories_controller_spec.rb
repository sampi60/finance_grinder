require 'rails_helper'

RSpec.describe Api::V1::CategoriesController, type: :controller do
  describe 'GET #index' do
    it 'assigns all categories as @categories' do
      category = create :category
      get :index, format: :json
      expect(response.header['Content-Type']).to include 'application/json'
      parsed_body = JSON.parse(response.body)
      expect(parsed_body.first['name']).to eq 'Food'
    end
  end
end
