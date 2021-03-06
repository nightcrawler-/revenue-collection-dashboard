class AccountsActivationController < ApplicationController

  def edit
    user = PUser.find_by(email: params[:email])

    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.update_attribute(:activated,    true)
      user.update_attribute(:activated_at, Time.zone.now)
      log_in user
      flash[:success] = 'Account activated'
      redirect_to user
    else
      flash[:danger] = 'Invalid activation link'
      redirect_to '/index.html'
    end

  end
end
