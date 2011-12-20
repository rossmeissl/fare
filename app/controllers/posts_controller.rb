class PostsController < ApplicationController

  before_filter :assemble_posts, :only => [:index, :list]

  def index
  end

  def new
    @post = Post.new :review => true
  end

  def create
    @post = Post.new params[:post]
    if @post.save
      flash[:notice] = "Successfully posted"
      redirect_to :action => :list
    else
      flash[:error] = "Post failed"
      render :action => :new
    end
  end

  def list
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find params[:id]
    if @post.update_attributes params[:post]
      flash[:notice] = "Post saved"
      redirect_to :action => :list
    else
      flash[:error] = "Update failed"
      render :action => :edit
    end
  end

  def destroy
    if Post.find(params[:id]).destroy
      flash[:notice] = "Post deleted"
    else
      flash[:error] = "Could not delete post"
    end
    redirect_to :action => :list
  end

  private

  def assemble_posts
    @posts = Post.all
  end
end
