class Review < ActiveRecord::Base
  belongs_to :service
  belongs_to :user
end
