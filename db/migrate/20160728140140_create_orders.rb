class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true
      t.integer :quantity
      t.integer :price
      t.integer :total_price

      t.timestamps null: false
    end
  end
end
