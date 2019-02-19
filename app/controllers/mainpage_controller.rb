class MainpageController < ApplicationController
  LAST_BOOKS_QUANTITY = 3
  BEST_SELLERS_QUANTITY = 4
  attr_accessor :first
  def homepage
    @new_books = Book.last(LAST_BOOKS_QUANTITY)
    @best_sellers = Book.first(BEST_SELLERS_QUANTITY)
    @author =
  end
end
