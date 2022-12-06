class RemoveUserFromBuy < ActiveRecord::Migration[6.1]
  def change
    remove_column :buys, :user_id
  end
end
