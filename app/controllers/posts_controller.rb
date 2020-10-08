class PostsController < ApplicationController

  def index
  	@post = Post.all
  end

  def all
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = current_customer.posts.new(post_params)
  	@post.rate = 0 if @post.rate.blank? #後置if
  	if @post.save
  		redirect_to post_path(@post)
  	else
  		render 'new'
  	end
  end

  def show
  	@post = Post.find(params[:id])
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])
  	if @post.update(post_params)
  		redirect_to post_path(@post)
  	end
  end

  def destroy
  end

  private
  def post_params
  	params.require(:post).permit(
  		:title, :body, :product_name, :bay_day, :price, :product_image, :rate)
  end
end
