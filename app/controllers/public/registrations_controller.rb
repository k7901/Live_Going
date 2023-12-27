# frozen_string_literal: true

class Public::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
 before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_up_path_for(resource)
    hotels_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :is_active])
  end
end
