class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def authenticate
    if session[:authenticated]
      @authenticated = true
    else
      redirect_to :controller => :sessions, :action => :new
    end
  end
end
