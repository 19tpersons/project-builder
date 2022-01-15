class Role < ApplicationRecord
  belongs_to :project

  has_many :activities
  has_many :roles

  accepts_nested_attributes_for :activities, :allow_destroy => true
  accepts_nested_attributes_for :roles, :allow_destroy => true
end
