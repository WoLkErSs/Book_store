require 'pry'
class OrderItemsController < ApplicationController
  def create
    order_item = CreateOrderItemService.new(get_current_order, params.permit(:quantity, :book_id)).call
    order_item.save ? flash[:success] = 'Added to card' : flash[:danger] = 'Cann`t add to card'
    
    redirect_to books_path
  end

  def update
    binding.pry
  end

  private

  def get_current_order
    session[:order_id] = create_order.id unless session[:order_id]
    Order.find_by(id: session[:order_id])
  end

  def create_order
    Order.create(user_id: user_signed_in? ? current_user.id : nil)
  end
end
