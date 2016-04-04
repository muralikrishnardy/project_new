class Picture < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
  validates :name, presence: true
  validates :is_success, acceptance: { accept: 'yes'}
  validates :imageable_type, exclusion: { in: %w(www us ca jp),
                                     message: "%{value} is reserved." }
end
