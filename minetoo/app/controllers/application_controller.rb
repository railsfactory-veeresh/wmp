class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    new_my_life_path #your custom page
  end

  def ensure_signup_complete
    # Ensure we don't go into an infinite loop
    return if action_name == 'finish_signup'

    # Redirect to the 'finish_signup' page if the user
    # email hasn't been verified yet
    if current_user && !current_user.email_verified?
      redirect_to finish_signup_path(current_user)
    end
  end
  
 protected
  def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up){|u|u.permit(:email, :name, :birth_date, :sex, :present_city, :present_country, :birth_city, :birth_country, :biography, :password, :password_confirmation)}
   devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email,:password, :password_confirmation,:current_password,:present_city, :present_country, :birth_city, :birth_country, :biography ) }
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
