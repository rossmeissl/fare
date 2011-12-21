class UserSessionsController < ApplicationController
  before_filter :logout, :only => [:new, :destroy]
  
  def create
    credentials = {:email => 'fare@capitalfare.com'}.merge params[:user_session].symbolize_keys
    @session = UserSession.new credentials
    @session.save!
    session[:authenticated] = true
    redirect_to :controller => :posts, :action => :list
  rescue LetMeIn::Error
    render :action => :new
  end

  def new
    @session = UserSession.new
  end

  def destroy
    redirect_to root_path
  end

  private
  def logout
    session[:authenticated] = false
  end
end
