class CreateFlowTechniques < ActiveRecord::Migration[6.0]
  def change
    create_table :flow_techniques do |t|
      t.integer :flow_id
      t.integer :technique_id

      t.timestamps
    end
  end
end
