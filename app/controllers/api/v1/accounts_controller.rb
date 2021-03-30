class Api::v1::AccountsController < ApplicationController

  def index

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
