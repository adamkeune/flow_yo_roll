class AddSuccessColumnToFlowTechniques < ActiveRecord::Migration[6.0]
  def change
    add_column :flow_techniques, :success, :boolean
  end
end
