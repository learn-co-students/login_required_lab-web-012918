class SecretsController < ApplicationController
  before_action :require_login

  def show

  end

  def require_login
    if session[:name] == nil
      redirect_to '/sessions/new'
    end
  end

end
