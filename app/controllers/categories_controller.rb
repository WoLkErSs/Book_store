class CategoriesController < ApplicationController
  BOOKS_PER_PAGE = 12
  include Pagy::Backend
  before_action :default_selection

  def index
    @pagy, @books = pagy(Book.all.selection_by_order(SelectionByFilterService::FILTERS.key(@current_filter).to_s), items: BOOKS_PER_PAGE)
  end

  def show
    @pagy, @books = pagy(Book.where(category_id: params[:id]).selection_by_order(SelectionByFilterService::FILTERS.key(@current_filter).to_s))
  end

  private

  def default_selection
    @current_filter = SelectionByFilterService.new(params[:selection]).call
    @books_all = Book.all.count
    @categories = Category.all
  end
end
