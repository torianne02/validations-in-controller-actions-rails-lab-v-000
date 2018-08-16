class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
<<<<<<< HEAD
    if @post.update(post_params)
=======
    if @post.valid?
      @post.update(post_params)

>>>>>>> 75683d814d900fb1a06ca9c258c8c3f2dcc8addf
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
