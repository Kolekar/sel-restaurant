class CreateWaiters < ActiveRecord::Migration
  def change
    create_table :waiters do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
