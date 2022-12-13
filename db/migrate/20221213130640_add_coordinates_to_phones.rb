class AddCoordinatesToPhones < ActiveRecord::Migration[6.1]
  def change
    add_column :phones, :latitude, :float
    add_column :phones, :longitude, :float
  end
end
