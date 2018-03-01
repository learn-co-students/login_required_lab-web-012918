class SecretsController < ApplicationController
  before_action :require_login

  def new

  end

  def show
    # if !session.include? :user_id
    #   redirect_to sessions_new_path
    # else
    #   render :new
    # end
    # return sessions_new_path unless session.include? :user_id
  end

  private

  def require_login
    # return head(:forbidden) unless session.include? :user_id
    if !session.include? :name
      redirect_to sessions_new_path
    end
  end
end
