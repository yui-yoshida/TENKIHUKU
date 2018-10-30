class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :sign_in_required, only: [:mypage]
  def after_sign_in_path_for(resource)
    mypage_user_path(current_user)
  end

  def after_account_update_path_for(resource)
    mypage_user_path(current_user)
  end

  private

    def sign_in_required
      redirect_to new_user_session_url unless user_signed_in?
    end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :icon])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :icon])
    end

end
