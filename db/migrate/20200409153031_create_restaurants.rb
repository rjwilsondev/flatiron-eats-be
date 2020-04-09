class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.integer :price_point
      t.text :description
      t.string :img_url

      t.timestamps
    end
  end
end
