class AddAdressToPhones < ActiveRecord::Migration[6.1]
  def change
    add_column :phones, :address, :string
  end
end

