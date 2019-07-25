class AddTechniqueIdToVideo < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :technique_id, :integer
  end
end
