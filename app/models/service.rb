class Service < ActiveRecord::Base
  validates_presence_of :title, length: {maximum:80}
  validates_presence_of :description, length: {maximum:1200}
  validates_presence_of :price
  validates_presence_of :delivery_time
  validates_presence_of :revisions
  validates_presence_of :requirements, length: {maximum:450}

  belongs_to :user

end
