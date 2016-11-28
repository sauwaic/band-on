class CreateSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :slots do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.references :studio, foreign_key: true
      t.boolean :taken

      t.timestamps
    end
  end
end
