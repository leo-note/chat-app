class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :name_save, if: :devise_controller?

  private
  def name_save
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
