class Student < ActiveRecord::Base
  has_many :teachers
  has_many :book, through :teachers


end
