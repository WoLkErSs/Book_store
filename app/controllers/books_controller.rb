require 'pry'
class BooksController < ApplicationController
  BOOKS_PER_PAGE = 12
  include Pagy::Backend
  before_action :default_selection

  def index
    @pagy, @books = pagy(GetBooksByCategoryService.new(params[:category], @current_filter).call, items: BOOKS_PER_PAGE)
  end

  def show;end

  private

  def default_selection
    @current_filter = SelectionByFilterService.new(params[:selection]).call
    @books_all = Book.all.count
    @categories = Category.all
  end
end
