class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show

  end

  def edit

  end

  def update
    if set_post!.update(post_params)
      # binding.pry
      # set_post!.update(post_params)
      redirect_to post_path
    else
      flash[:error] = @post.errors.full_messages
      # redirect_to edit_post_path(@post)
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
