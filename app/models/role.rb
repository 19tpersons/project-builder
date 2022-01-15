class Role < ApplicationRecord
  belongs_to :project

  has_many :activities
  has_many :roles
end
