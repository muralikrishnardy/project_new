class AddDetailsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :character, :string
  end
end
