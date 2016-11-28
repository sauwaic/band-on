class RemoveSlotFromGroups < ActiveRecord::Migration[5.0]
  def change
    remove_reference :groups, :slot, index: true
  end
end
