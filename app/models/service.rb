class Service < ActiveRecord::Base

  belongs_to :user
  has_many :orders
  has_many :reviews

  has_attached_file :image, styles: {medium: "300x300>", small: "230x140>", thumb: "100x100>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates_presence_of :title, length: { maximum: 80 }
  validates_presence_of :description, length: { maximum: 1200 }
  validates_presence_of :price
  validates_presence_of :delivery_time
  validates_presence_of :revisions
  validates_presence_of :requirements, length: { maximum: 450 }

  def average_rating
    reviews.count == 0 ? 0 : reviews.average(:star).round(2)
  end

  def self.search(query)
    where("title ILIKE ? OR description ILIKE ? OR requirements ILIKE ?", "%#{query}%", "%#{query}%", "%#{query}%")
  end

end
