class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authentication

  private

  def authentication
    @authenticated = session[:authenticated]
  end

  def authenticate
    if session[:authenticated]
      true
    else
      redirect_to :controller => :sessions, :action => :new
    end
  end
end
