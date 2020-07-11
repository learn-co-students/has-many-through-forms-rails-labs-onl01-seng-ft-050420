class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    #"post"=>{"title"=>"Title", "content"=>"Content", "category_ids"=>["", "24"], "categories_attributes"=>{"0"=>{"name"=>""}}}
    post = Post.create(post_params)
    redirect_to post_path(post)
  end

 

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
