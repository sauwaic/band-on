class AddColumnToGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :playlist_name, :string
    add_column :groups, :playlist_path, :string
  end
end
