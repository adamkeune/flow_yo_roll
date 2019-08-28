class AddSourcePositionToFlowTechniques < ActiveRecord::Migration[6.0]
  def change
    add_column :flow_techniques, :source_position_id, :integer
  end
end
