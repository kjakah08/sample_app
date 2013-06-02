class SessionsController < ApplicationController

	def new
	end


	def create
		user = User.find_by_email(params[:session][:email].downcase)
		if user && user.atuhenticate(params[:session][:password])
			sign_in user
			redirect_to user
		else
			#Flash.now allows for an error only on page first appeared
			flash.now[:error] = 'Invalid email/password combination' 
			render 'new'
		end
	end


	def destroy
	end
end
