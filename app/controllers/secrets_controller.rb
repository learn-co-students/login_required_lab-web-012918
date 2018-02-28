class SecretsController < ApplicationController

  def show
    if !current_user.present?
      redirect_to '/'
    else
      render :show
    end
  end
end
