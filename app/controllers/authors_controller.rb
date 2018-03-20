class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.create(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      flash[:error] = @author.errors.full_messages
      render new_author_path
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
