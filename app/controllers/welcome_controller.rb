class WelcomeController < ApplicationController
  def register
    if params.has_key?(:user_name) && !params[:user_name].strip.empty?
      user_name = params[:user_name].strip


      #Save user to database
      #user is an object of user table
      user=User.new
      user.name =user_name
      user.save
      #Store user ID in session, we are creating this user_id so that we are only sending back and forth the ID rather then the entire name or string
      session[:user_id]=user.id.to_s
      redirect_to '/game/play'
    else
      render 'register'
    end
  end
end
