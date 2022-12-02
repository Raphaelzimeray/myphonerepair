class AddReparationsTypesToReparations < ActiveRecord::Migration[6.1]
  def change
    add_column :reparations, :reparation_type, :integer, default: 0
  end
end
