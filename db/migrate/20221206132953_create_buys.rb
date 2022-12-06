class CreateBuys < ActiveRecord::Migration[6.1]
  def change
    create_table :buys do |t|
      t.integer :phone_price
      t.date :delivery_date
      t.string :accessories
      t.string :warranty
      t.references :phone, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
