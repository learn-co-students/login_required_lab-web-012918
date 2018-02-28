class SecretsController < ApplicationController

  def show
    # require_login
    if !current_user
      redirect_to '/login'
    end
  end

  # private
  #
  # def require_login
  #   return head(:forbidden) unless session.include? :name
  #   redirect_to sessions_new_path
  # end
end
