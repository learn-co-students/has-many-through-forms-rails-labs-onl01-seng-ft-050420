class CategoriesController < ApplicationController

  def show #show one thing
    @category = Category.find(params[:id])
  end


def index #show all the things
  @categories = Category.all
end
end	