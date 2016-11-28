class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :number_of_players
      t.string :description
      t.string :genre
      t.references :studio, foreign_key: true
      t.integer :price_per_user
      t.references :slot, foreign_key: true

      t.timestamps
    end
  end
end
