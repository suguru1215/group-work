class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_paramters, if: :devise_controller?

  protected
    def configure_permitted_paramters
      devise_parameter_sanitizer.permit(:sign_up) do |user_params|
        user_params.permit(:fullname)
      end

      devise_parameter_sanitizer.permit(:account_update) do |user_params|
        user_params.permit(:fullname, :description, :email, :password)
      end
    end
end
