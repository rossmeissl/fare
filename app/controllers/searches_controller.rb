class SearchesController < ApplicationController
  def create
    @posts = Post.search params[:search][:query]
    render :controller => :posts, :action => :search
  end
end
