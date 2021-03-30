class Api::v1::TransactionsController < ApplicationController

  before_action :set_account

  def index
    @transactions = @account.transactions
    render json: @transactions
  end

  def create

  end

  def show
    @transaction = Transaction.find(params[:id])
    render json: @transaction 
  end

  def destroy

  end

  private

  def set_account 
    @account = Account.find(params[:account_id])
  end

  def transaction_params
    params.require(:transaction).permit(:amount, :account_id, :kind, :date, :description)
  end


end
