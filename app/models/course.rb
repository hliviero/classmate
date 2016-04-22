class Course < ActiveRecord::Base
  extend EnumerateIt
  has_enumeration_for :status, with: CourseStatus

  validates :name,  presence: true, length: { maximum: 45 }
  validates :description, presence: true, length:  { maximum: 45 }
end
