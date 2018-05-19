class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)

    else
      render 'new'
      flash[:message] = "Fix me"
    end
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @post}
    end
  end

  def index
    @posts = Post.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @posts }
    end
  end

  def update
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find_by(id: params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :date_published)
  end
end
