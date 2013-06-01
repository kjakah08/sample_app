class UsersController < ApplicationController
  
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		flash[:success] = "Welcome to the Sample App!"
      redirect_to @user #  redirects to the show page
  	else
  		render 'new'
  	end
  end

  def show
  	# Shows a new user,. 
  	@user = User.find(params[:id])
  end
end
