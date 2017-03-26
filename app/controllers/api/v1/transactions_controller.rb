class Api::V1::TransactionsController < Api::V1::BaseController
  def index
    render json: Transaction.all, include: { category: { only: :name } }
  end
end
