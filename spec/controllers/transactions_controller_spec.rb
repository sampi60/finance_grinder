require 'rails_helper'

RSpec.describe Api::V1::TransactionsController, type: :controller do
  describe 'GET #index' do
    it 'assigns all transactions as @transactions' do
      transaction = create :transaction
      get :index, format: :json
      expect(response.header['Content-Type']).to include 'application/json'
      parsed_body = JSON.parse(response.body)
      expect(parsed_body.first['date']).to eq '2017-03-24'
    end
  end
end
