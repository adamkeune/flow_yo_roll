class AddTechniqueIdToPractice < ActiveRecord::Migration[6.0]
  def change
    add_column :practices, :technique_id, :integer
  end
end
