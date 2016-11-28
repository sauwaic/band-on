class AddInstrumentsToGroupUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :group_users, :instrument, foreign_key: true
  end
end
