class SessionsController < ApplicationController
  # before_action :require_login
  # skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name] == nil || session[:name].empty?
      redirect_to '/sessions/new'
    else
      redirect_to '/'
    end
  end

  def destroy
    if session[:name] != nil
      session.delete :name

    end
  end
  
end
