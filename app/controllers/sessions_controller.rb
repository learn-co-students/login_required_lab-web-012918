class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def create
    session[:name] = params[:name]
    if !session[:name].present?
      redirect_to '/'
    else
      redirect_to '/sessions/show'
    end
  end

  def show
    if require_login == false
      redirect '/sessions/login'
    end
  end

  def destroy
    session[:name] = params[:name]
    if session[:name].present?
      session.delete :name
    end
  end

  private
  def require_login
    if current_user.present?
      return false
    else
      return true
    end
  end

end
