class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :properties
      t.decimal :price
      t.string :link

      t.timestamps null: false
    end
  end
end
