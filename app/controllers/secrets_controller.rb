class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new]

  def show

  end

  private

  def require_login
    redirect_to '/new' unless session.include? :name
  end

end
