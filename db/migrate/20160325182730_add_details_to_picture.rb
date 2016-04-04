class AddDetailsToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :is_success, :boolean
  end
end
