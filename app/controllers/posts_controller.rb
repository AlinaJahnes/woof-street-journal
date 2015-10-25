class PostsController < ApplicationController
  before_action :require_login, except: [:index, :show]
  before_action :check_privileges, only: [:edit, :update]

  def index
    @category = params[:category]
    @posts = Post.where(category: @category)  
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      flash.now[:errors] = @post.errors.full_messages
      render :new
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

  def check_privileges
    unless current_user.id == Post.find_by(id: params[:id]).user_id
     redirect_to root_path, notice: "not authorized!"
    end
  end
end