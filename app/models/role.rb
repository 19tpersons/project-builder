class Role < ApplicationRecord
  belongs_to :project
  
  has_many :activities

  accepts_nested_attributes_for :activities, :allow_destroy => true
end
