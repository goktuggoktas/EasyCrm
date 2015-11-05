class CreateCustomerProducts < ActiveRecord::Migration
  def change
    create_table :customer_products do |t|
      t.integer :customer_id
      t.integer :product_id

      t.timestamps null: false

      t.index :product_id
      t.index :customer_id
    end
  end
end
