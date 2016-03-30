class Semester < ActiveRecord::Base
  belongs_to :student
  belongs_to :semester
end
