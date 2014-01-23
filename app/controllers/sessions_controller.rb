class SessionsController < ApplicationController
  
	#sessions are the way the browser tracks me 
	#we want to manage them in our app
	#sessions controller deals with stuff

	def destroy
		#aka log out
		reset_session
		flash[:success] = "you've logged out"
		redirect_to root_path
	end



	def new
		#log in form
	end

	def create
		#do in log

		#i want to find the username and password typed in
		@username = params[:session][:username]
		@password = params[:session][:password]

		#then i want to see if there is a user with that username
		@user = User.find_by_username(@username)
		#if there is , check password aswell

		if @user.present? and @user.authenticate(@password)
			#if matches, give them session
			session[:user_id] = @user.id
			flash[:success] = "youre logged in"
			redirect_to root_path
		else
			flash[:error] = "wrong user name or password"
			#if not, show the new page
			render "new"
			
		end
		
	end
end
