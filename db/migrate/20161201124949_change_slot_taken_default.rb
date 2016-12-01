class ChangeSlotTakenDefault < ActiveRecord::Migration[5.0]
  def change
    change_column :slots, :taken, :boolean, :default => false
  end
end
