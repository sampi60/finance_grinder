class Api::V1::TransactionsController < Api::V1::BaseController
  def index
    render json: Transaction.all, include: { category: { only: :name } }
  end

  def create
    respond_with :api, :v1, Transaction.create(transaction_params)
  end


  private

    def transaction_params
      params.require(:transaction).permit(:id, :amount, :date, :user_id)
    end
end
