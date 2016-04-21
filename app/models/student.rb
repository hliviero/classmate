class Student < ActiveRecord::Base
  extend EnumerateIt
  has_enumeration_for :status, with: StudentStatus
end
