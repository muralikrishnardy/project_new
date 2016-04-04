class Employe < ActiveRecord::Migration
  def change
    add_column :employes, :manager_id, :integer

  end
end
