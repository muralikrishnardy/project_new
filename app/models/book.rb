class Book < ActiveRecord::Base
  has_many :teachers
  has_many :subjects, through: :teachers
end
