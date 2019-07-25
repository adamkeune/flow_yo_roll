class AddUserIdToTechnique < ActiveRecord::Migration[6.0]
  def change
    add_column :techniques, :user_id, :integer
  end
end
