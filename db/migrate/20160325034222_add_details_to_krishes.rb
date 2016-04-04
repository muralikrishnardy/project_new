class AddDetailsToKrishes < ActiveRecord::Migration
  def change
    add_column :krishes, :email, :string
  end
end
