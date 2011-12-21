class SearchesController < ApplicationController
  def create
    @query = params[:search][:query]
    @posts = Post.search @query
    render 'posts/search'
  end
end
