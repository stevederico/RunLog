class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  	  session[:user_id] = @user.id
      redirect_to runs_path, :notice => "Logged in!"
      # redirect_to root_url, :notice => "Signed up!"
      # cookies[:auth_token] = @user.auth_token
  	else
  		render "new"
  	end
  end
  
  def login
    @user = User.authenticate(params[:email], params[:password])
     if user
       session[:user_id] = user.id
       redirect_to runs_path, :notice => "Logged in!"
     else
       flash.now.alert = "Invalid email or password"
       render "new"
     end
  end
end
