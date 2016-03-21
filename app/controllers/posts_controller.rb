class PostsController < ApplicationController
  def index
  	@posts=Post.all
  end

  def show
  	@post=Post.find(params[:id])
  end

  def create
  	@post=Post.new(params.require(:post).permit(:title, :desc))
  	@post.save
  	flash[:notice]="Successfully created the post"
  	redirect_to action: "index"
  end
end
