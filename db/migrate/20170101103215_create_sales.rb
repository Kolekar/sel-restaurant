class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :table_no
      t.integer :waiter_id
      t.integer :user_id
      t.float :payed_price
      t.datetime :in_date_time
      t.datetime :out_date_time

      t.timestamps null: false
    end
  end
end
