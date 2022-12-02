class RemoveReparationsTypesToReparations < ActiveRecord::Migration[6.1]
  def change
    remove_column :reparations, :reparation_type, :integer
  end
end
