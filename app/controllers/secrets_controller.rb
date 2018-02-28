class SecretsController < ApplicationController
  helper_method :current_user

  def new
  end

  def index

  end

  def show
    if !current_user
      redirect_to '/sessions/new'
    else
      render :index
    end
  end

end
