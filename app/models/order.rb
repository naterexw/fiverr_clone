class Order < ActiveRecord::Base
  before_validation :set_order_price

  validates_presence_of :quantity
  validates_presence_of :price
  validates_presence_of :total_price
  validates_presence_of :service_id

  belongs_to :user
  belongs_to :service


  private
    def set_order_price
      self.total_price = self.quantity * self.price
    end

end
