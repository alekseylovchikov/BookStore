class CategoriesController < ApplicationController
  def new
    @page_title = 'Add New Category'

    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'Category added'

      redirect_to categories_path
    else
      #flash[:alert] = 'Error message: category field is empty!'
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])

    @books = @category.books

    @categories = Category.all
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
