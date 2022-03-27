class Employee < ApplicationRecord
  has_many :roles
  has_many :projects, through: :roles

end
