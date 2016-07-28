class AddUserToService < ActiveRecord::Migration
  def change
    add_reference :services, :user, index: true, foreign_key: true
  end
end
