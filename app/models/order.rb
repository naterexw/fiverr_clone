class Order < ActiveRecord::Base
  validates_presence_of :quantity
  validates_presence_of :price
  validates_presence_of :total_price
  validates_presence_of :service_id

  belongs_to :user
  belongs_to :service
end
