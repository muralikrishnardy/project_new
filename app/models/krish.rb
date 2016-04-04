class Krish < ActiveRecord::Base

  validates :name, presence: true, length: { minimum: 3 }
  validates :is_success, acceptance: {accept:true}
  # validates :email, confirmation: true
  validates :name, exclusion: { in: %w(www us ca jp),
                                     message: "%{value} is reserved." }
  validates :location, format: { with: /\A[a-zA-Z]+\z/,
                                    message: "only allows letters" }

  validates :name, uniqueness: { scope: :location,
                                 message: "should happen once per year" }



  end

