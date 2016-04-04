class Manager < ActiveRecord::Base
  has_many :projects
  has_many :employes, through: :projects
end
