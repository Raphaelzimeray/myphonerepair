class RemoveReparationTypeToReparations < ActiveRecord::Migration[6.1]
  def change
    remove_column :reparations, :reparation_type, :string
  end
end
