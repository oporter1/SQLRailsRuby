class GameController < ApplicationController
  def play
    @user= User.find(session[:user_id])
  end

  # def list
  #   @list= User.all
  # end

end
