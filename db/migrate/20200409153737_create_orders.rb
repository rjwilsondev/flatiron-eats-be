class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.reference :user
      t.reference :restaurant
      t.datetime :time

      t.timestamps
    end
  end
end
