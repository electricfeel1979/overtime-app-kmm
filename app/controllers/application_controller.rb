class ApplicationController < ActionController::Base
  include Pundit::Authorization
  # protect_from_forgery with :exception
  before_action :authenticate_user!

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def admin_types
    ['AdminUser']
  end

  private

  def user_not_authorized
    flash[:alert] = 'You are not authorized to perform this action.'
    redirect_back(fallback_location: root_path)
  end
end
