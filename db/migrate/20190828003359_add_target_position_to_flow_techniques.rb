class AddTargetPositionToFlowTechniques < ActiveRecord::Migration[6.0]
  def change
    add_column :flow_techniques, :target_position_id, :integer
  end
end
