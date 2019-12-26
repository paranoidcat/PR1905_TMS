# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super 
  # end
  
  # def create_using_facebook
  #   @user = User.find_or_create_from_auth_hash(auth_hash)
  #   self.current_user = @user
  #   redirect_to '/'
  # end

  def create_using_facebook
    if request.env[‘omniauth.auth’]
      user = User.create_with_omniauth(request.env[‘omniauth.auth’])
      session[:user_id] = user.id    
      redirect_to user_path(user.id)
    else
      user = User.find_by_email(params[:email])
      user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    end
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end    
end
