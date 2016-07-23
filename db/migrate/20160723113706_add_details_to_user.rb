class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :fullname, :string
    add_column :users, :description, :string
  end
end
