class Employee < ApplicationRecord
  has_many :project_employees
  has_many :projects, through: :project_employees

  has_many :employee_roles
  has_many :roles, through: :employee_roles
end
