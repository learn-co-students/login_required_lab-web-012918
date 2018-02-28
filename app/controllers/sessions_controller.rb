class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'welcome'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
      redirect_to '/login'
    else
      session[:name] = nil
      redirect_to controller: 'application', action: 'welcome'
    end
  end



end
