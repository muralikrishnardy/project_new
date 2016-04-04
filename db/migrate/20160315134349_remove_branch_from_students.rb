class RemoveBranchFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :branch
  end
end
