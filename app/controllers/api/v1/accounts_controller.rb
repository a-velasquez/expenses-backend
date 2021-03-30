class Api::v1::AccountsController < ApplicationController

  def index
    @accounts = Account.all 
    render json: @accounts
    # or
    # render json: Account.all
  end

  def create

  end

  def show

  end

  private

  def account_params
    params.require(:account).permit(:amount, :balance)
  end

end
