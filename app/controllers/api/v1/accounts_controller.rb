class Api::v1::AccountsController < ApplicationController

  

  private

  def account_params
    params.require(:account).permit(:amount, :balance)
  end

end
