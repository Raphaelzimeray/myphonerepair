class AddUserToBuys < ActiveRecord::Migration[6.1]
  def change
    add_reference :buys, :user, foreign_key: true
  end
end
