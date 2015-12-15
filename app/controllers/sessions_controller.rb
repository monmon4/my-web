class SessionsController < ApplicationController
	skip_before_action :ensure_login, only: [:new, :create]

  def new
    if logged_in?
  redirect_to documents_path
end
  end

  def create
if logged_in?
  redirect_to documents_path
else
  	user = User.find_by(name: params[:user][:name])
    username = params[:user][:name]
  	password = params[:user][:password]
    state = params[:user][:state]
  	if user && user.authenticate(password) && state == "login"
  		session[:user_id] = user.id
  		redirect_to documents_path, notice: "logged in successfully"
  	else
      if user == nil && state == "signup" && password != nil && username != nil
      User.create(name: username, password: password)
      redirect_to login_path, notice: "Signed up successfully"
      else
  		redirect_to login_path, alert: "Invaled username/password combination"
    end
  	end
  end

  end

  def destroy
  	reset_session
  	redirect_to login_path, notice: "You were logged out"
  end
end
