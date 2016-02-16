class HomeController < ApplicationController
  def show

    if session[:id]
      list_payments
    else
      redirect_to '/'
    end
  end
end
