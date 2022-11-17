class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.string :brand
      t.string :model
      t.integer :capacity
      t.string :color
      t.string :camera
      t.integer :year
      t.string :processor
      t.integer :price

      t.timestamps
    end
  end
end
