class Api::V1::TransactionsController < Api::V1::BaseController
  def index
    respond_with Transaction.all
  end
end
