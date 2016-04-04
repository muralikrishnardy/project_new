class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :employe_id
      t.integer :manager_id
      t.datetime :date_time

      t.timestamps
    end
  end
end
