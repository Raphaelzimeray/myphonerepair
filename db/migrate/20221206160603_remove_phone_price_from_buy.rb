class RemovePhonePriceFromBuy < ActiveRecord::Migration[6.1]
  def change
    remove_column :buys, :phone_price, :integer
  end
end
