class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(author_params)
<<<<<<< HEAD
    if @author.save
=======
    if @author.valid?
      @author.save

>>>>>>> 75683d814d900fb1a06ca9c258c8c3f2dcc8addf
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
