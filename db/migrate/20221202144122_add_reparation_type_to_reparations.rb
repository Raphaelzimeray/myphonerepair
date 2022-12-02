class AddReparationTypeToReparations < ActiveRecord::Migration[6.1]
  def change
    add_column :reparations, :reparation_type, :string
  end
end
