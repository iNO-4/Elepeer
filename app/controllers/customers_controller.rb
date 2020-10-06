class CustomersController < ApplicationController

  def mypage
    @customer = Customer.find(params[:id])
  end

  def show
  end

  def edit
  end

  def update
  end

  def index
  end

  def unsubscribe
  end

  def thanks
  end

  def customer_params
    params.require(:customer).permit(
      :last_name, :first_name, :last_name_kana, :first_name_kana, :handle_name, :email)
  end

end
