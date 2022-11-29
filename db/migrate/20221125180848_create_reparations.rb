class CreateReparations < ActiveRecord::Migration[6.1]
  def change
    create_table :reparations do |t|
      t.date :date
      t.integer :price_of_repair
      t.references :phone, null: false, foreign_key: true

      t.timestamps
    end
  end
end
