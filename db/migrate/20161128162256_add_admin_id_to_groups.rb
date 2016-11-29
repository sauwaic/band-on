class AddAdminIdToGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :admin_id, :integer
    add_index :groups, :admin_id
  end
end
