class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.reference :restaurant
      t.text :description
      t.float :price
      t.string :img_url

      t.timestamps
    end
  end
end
