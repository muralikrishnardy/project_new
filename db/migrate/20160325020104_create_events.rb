class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.boolean :is_succes
      t.integer :user_count
      t.integer :employe_id
      t.integer :user_id

      t.timestamps
    end
  end
end
