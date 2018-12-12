class SessionsController < ApplicationController
  def create
    @user = User.find_by(email: params[:login_email])
    # session[:user_id] = @user.id

    if @user.authenticate params[:login_password]
      @response_data = User.select(:id, :email, :phone, :remember_digest, :role).where(id: @user.id)
      render json: @response_data
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # private
  # def current_user
  #   if session[:user_id]
  #     @current_user ||= User.find_by(id: session[:user_id])
  #   end
  # end

  # # Returns true if the user is logged in, false otherwise.
  # def logged_in?
  #   !current_user.nil?
  # end

  # # Logs out the current user.
  # def log_out
  #   session.delete(:user_id)
  #   @current_user = nil
  # end
end
