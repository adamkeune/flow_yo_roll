class AddTypeIdToTechnique < ActiveRecord::Migration[6.0]
  def change
    add_column :techniques, :type_id, :integer
  end
end
