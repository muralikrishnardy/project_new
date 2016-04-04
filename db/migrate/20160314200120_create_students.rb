class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :num
      t.integer :age
      t.string :address
      t.string :branch

      t.timestamps
    end
  end
end
