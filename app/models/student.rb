class Student < ActiveRecord::Base
  has_many :courses, through: :registrations, dependent: :destroy
end
