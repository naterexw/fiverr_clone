class OrdersController < ApplicationController
  before_action :authenticate_user!

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
