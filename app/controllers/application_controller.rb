class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #the application controller deals with all the other controllers like a boss

  #lets make a shortcut called current_user
  def current_user
  	if session[:user_id].present?
  		User.find(session[:user_id])
  	end
  end


  #make the shortcut above available in our views
  #as well as our controllers
  helper_method :current_user


  #lets add in an action to make anyone logged out go to the sign up page
  def make_sure_logged_in

    if current_user.nil?
      flash[:error] = "you gotta sign up"
      redirect_to new_user_path
    end

  end




end
