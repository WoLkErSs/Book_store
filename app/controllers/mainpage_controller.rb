class MainpageController < ApplicationController
  LAST_BOOKS_QUANTITY = 3
  BEST_SELLERS_IN_CATEGORY = 1

  def homepage
    @new_books = Book.last(LAST_BOOKS_QUANTITY)
    @best_sellers = BooksBestSellersService.new(BEST_SELLERS_IN_CATEGORY).call
  end
end
