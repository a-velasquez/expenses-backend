class Api::v1::TransactionsController < ApplicationController

  def index

  end

  def create

  end

  def show

  end

  def destroy

  end

  private

  def transaction_params
    params.require(:transaction).permit(:amount, :account_id, :kind, :date, :description)
  end


end
