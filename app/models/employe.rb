class Employe < ActiveRecord::Base
  has_many :projects
  has_many :managers, through: :projects
  has_many :pictures, as: :imageable
  has_many :subordinates, class_name: "Employe",
           foreign_key: "manager_id"

  belongs_to :manager, class_name: "Employe"
end
