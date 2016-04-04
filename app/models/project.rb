class Project < ActiveRecord::Base
  belongs_to :employe
  belongs_to :manager
end
