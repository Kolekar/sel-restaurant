class CreateSaleItems < ActiveRecord::Migration
  def change
    create_table :sale_items do |t|
      t.integer :sale_id
      t.integer :menu_id
      t.float :rate
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
