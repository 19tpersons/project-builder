class Role < ApplicationRecord
  has_many :activities
  has_many :employee_roles
  has_many :employees, through: :employee_roles

  accepts_nested_attributes_for :activities, :allow_destroy => true
end
