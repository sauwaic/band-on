class RemoveStudioIdFromGroups < ActiveRecord::Migration[5.0]
  def change
    remove_column :groups, :studio_id
  end
end
