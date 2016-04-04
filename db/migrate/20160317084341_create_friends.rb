class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.integer :no
      t.string :address

      t.timestamps
    end
  end
end
