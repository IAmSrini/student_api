class Course < ActiveRecord::Base
  belongs_to :semester
  has_many :students, through: :registrations, dependent: :destroy
end
