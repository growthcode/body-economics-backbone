class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def configure_permitted_parameters
    # devise strong params with different contexts
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :weight, :goal_weight, :max_calories, :goal_weekly_score, :sex) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :weight, :goal_weight, :max_calories, :goal_weekly_score, :sex) }
  end
end
