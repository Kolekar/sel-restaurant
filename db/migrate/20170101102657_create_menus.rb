class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :item_name
      t.float :rate
      t.integer :user_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
