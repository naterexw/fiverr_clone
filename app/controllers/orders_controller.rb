class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    @order = current_user.orders.build(order_params)
    redirect_to @order.service
  end

  def user_orders
    @orders = current_user.orders
  end

  private
    def order_params
      params.require(:order).permit(:quantity, :price, :total_price, :service_id)
    end
end
