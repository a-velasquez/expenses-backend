class Api::v1::AccountsController < ApplicationController

  def index
    @accounts = Account.all 
    render json: @accounts
    # or
    # render json: Account.all
  end

  def create
    @account = Account.new(account_params)
    if @accounts.save
      render json: @account
    else
      render json: {error: 'Error creating account...'}
    end
  end

  def show
    @account = Account.find(params[:id])
    render json: @account 
  end
  
  def destroy 
    @account = Account.find(params[:id])
    @account.destroy
  end


  private

  def account_params
    params.require(:account).permit(:amount, :balance)
  end

end
