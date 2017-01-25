class Service < ActiveRecord::Base
  has_attached_file :image, styles: {medium: "300x300>", small: "230x140>", thumb: "100x100>"}

  validates_presence_of :title, length: {maximum:80}
  validates_presence_of :description, length: {maximum:1200}
  validates_presence_of :price
  validates_presence_of :delivery_time
  validates_presence_of :revisions
  validates_presence_of :requirements, length: {maximum:450}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  belongs_to :user
  has_many :orders
  has_many :reviews

end
