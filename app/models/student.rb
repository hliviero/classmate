class Student < ActiveRecord::Base
  extend EnumerateIt
  has_enumeration_for :status, with: StudentStatus

  validates :name,  presence: true, length: { maximum: 45 }
  validates :register_number, presence: true, length:  { maximum: 45 }, uniqueness: { case_sensitive: false }
end
