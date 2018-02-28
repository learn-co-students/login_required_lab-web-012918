class SessionsController < ApplicationController

  def welcome
    require_login
    # if !current_user
    #   redirect_to sessions_new_path
    # end
  end

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/welcome'
    end
  end

  def destroy
    session.delete(:name)
    redirect_to '/login'
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
    redirect_to sessions_new_path
  end

end
