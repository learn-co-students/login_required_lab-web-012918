class SessionsController < ApplicationController

  def new
  end

  def create
    @name = params[:name]
    if session[:name]
      redirect_to '/homepage'
    else
      if !@name || @name == ""
        redirect_to '/'
      else
        session[:name] = @name
        redirect_to '/homepage'
      end
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

end
