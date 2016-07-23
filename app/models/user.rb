class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :fullname, length: {maximum: 50}
  validates :description, presence: false, length: {maximum: 1500}

  has_many :services

end
