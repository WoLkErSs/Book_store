require 'pry'
class CategoryController < ApplicationController
    def index
      @categories = Category.all
      @books = Book.all
      @books_all = Book.all.count
    end

    def show
      @books_all = Book.all.count
      # @books_all = Book.all.count
      @categories = Category.all
      # if params[:id] == 'all'
        @books = Book.price_asc.all
      # else
      #   @books = Book.where(category_id: params[:id])
      # end
      # make_selection
    end

    def make_selection
      @selection = Book.where(nil)
      @selection
      binding.pry
    end
end
