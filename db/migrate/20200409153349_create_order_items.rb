class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.reference :order
      t.reference :item

      t.timestamps
    end
  end
end
