class HomeController < ApplicationController
  def show

    if session[:user_id]
      list_payments
    else
      redirect_to '/'
    end
  end
end
