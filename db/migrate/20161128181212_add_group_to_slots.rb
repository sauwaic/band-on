class AddGroupToSlots < ActiveRecord::Migration[5.0]
  def change
    add_reference :slots, :group, foreign_key: true
  end
end
