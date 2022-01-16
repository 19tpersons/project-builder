class Role < ApplicationRecord
  has_many :activities
  has_many :project_roles
  has_many :projects, through: :project_roles

  accepts_nested_attributes_for :activities, :allow_destroy => true
  #accepts_nested_attributes_for :roles, :allow_destroy => true
end
