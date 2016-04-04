class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :type
      t.integer :num_of_matches
      t.integer :num_of_players

      t.timestamps
    end
  end
end
