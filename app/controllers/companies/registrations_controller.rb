# frozen_string_literal: true

class Companies::RegistrationsController < Devise::RegistrationsController
  skip_before_action :configure_permitted_parameters_for_newstudent
  skip_before_action :configure_permitted_parameters_for_updatestudent
  skip_before_action :onfigure_permitted_parameters_for_newcompany, only: [:update]
  skip_before_action :configure_permitted_parameters_for_updatecompany, only: [:create]

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    
    super
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  def cancel
    super
  end

  protected

  
  def configure_sign_up_params
    added_attrs = [ :name, :place, :profile]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
  end

  
  def configure_update_params
    added_attrs = [ :name, :place, :profile, :icon]
    devise_parameter_sanitizer.permit(:edit, keys: added_attrs)
   end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    super(resource)
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    super(resource)
  end
end
