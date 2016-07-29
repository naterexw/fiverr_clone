class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    @order = current_user.orders.build(order_params)
    if @order.save
      flash[:success] = "Order successfully placed"
      redirect_to @order.service
    else
      flash[:alert] = @order.errors.full_messages.to_sentence
      redirect_to @order.service
    end
  end

  def user_orders
    @orders = current_user.orders
  end

  def user_sales
    @services = current_user.services
  end

  private
    def order_params
      params.require(:order).permit(:quantity, :price, :total_price, :service_id)
    end
end
