class Subject < ActiveRecord::Base
  has_many :teachers
  has_many :books, through: :teachers

end
