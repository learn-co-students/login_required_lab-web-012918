class SessionsController < ApplicationController
  def new
  end

  def create
    user = params[:name]
    if user && !user.empty?
      session[:name] = user
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.clear
    redirect_to '/login'
  end

end
