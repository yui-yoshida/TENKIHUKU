class ApplicationController < ActionController::Base
before_action :sign_in_required, only: [:show]
  def after_sign_in_path_for(resource)
    mypage_user_path(current_user)
  end

  private
    def sign_in_required
      redirect_to new_user_session_url unless user_signed_in?
    end

end
