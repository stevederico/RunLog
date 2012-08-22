class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to "sessions#create", :notice => "Signed Up!"
  	else
  		render "new"
  	end

  end
end
