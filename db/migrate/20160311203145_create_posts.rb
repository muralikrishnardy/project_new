class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :salary
      t.string :emp_

      t.timestamps
    end
  end
end
