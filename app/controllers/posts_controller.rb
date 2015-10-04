class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render :new, flash.now[:error] = "Fail to save new post. Please try again."
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find_by_id(params[:id])
    render :edit
  end

  def update
    @post = Post.find_by_id(params[:id])
    @post.update(post_params)
    redirect_to @post
  end

  def destroy
    Post.find_by_id(params[:id]).destroy
    redirect_to user_path(current_user)
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :category).merge(user_id: session[:user_id])
  end
end