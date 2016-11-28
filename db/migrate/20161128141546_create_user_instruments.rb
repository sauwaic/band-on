class CreateUserInstruments < ActiveRecord::Migration[5.0]
  def change
    create_table :user_instruments do |t|
      t.references :instrument, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
