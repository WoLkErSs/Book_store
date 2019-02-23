require 'pry'
class CategoriesController < ApplicationController
    include Pagy::Backend
    # before_action :make_selection
    before_action :set

    def set
      @filters = {
        created_at_desc: 'Newest first',
        popular_desc: 'Popular first',
        title_asc: 'Title A-Z',
        title_desc: 'Title Z-A',
        price_asc: 'Price: Low to high',
        price_desc: 'Price: High to low'
      }
      @current_filter = params[:selection] ? @filters[params[:selection].to_sym] : @filters[:created_at_desc]
      @books_all = Book.all.count
      @categories = Category.all
      @category_id = params[:id] ? params[:id] : 1
    end

    def index
      @pagy, @books = pagy(Book.all.selection_by_order(@filters.key(@current_filter).to_s), items: 12)
    end

    def show
      @pagy, @books = pagy(Book.where(category_id: params[:id]).selection_by_order(@filters.key(@current_filter).to_s))
    end

    private

    def make_selection
    end
end
