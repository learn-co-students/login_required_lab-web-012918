class SessionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    @name = params[:name]
    if @name == '' || @name == nil
      redirect_to '/new'
    else
      session[:name] = @name
      redirect_to '/secrets/show'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/new'
  end

end
