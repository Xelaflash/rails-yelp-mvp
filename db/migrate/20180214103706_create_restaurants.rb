class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :adress
      t.integer :tel
      t.string :category

      t.timestamps
    end
  end
end
