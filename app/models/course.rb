class Course < ActiveRecord::Base
  extend EnumerateIt
  has_enumeration_for :status, with: CourseStatus
end
