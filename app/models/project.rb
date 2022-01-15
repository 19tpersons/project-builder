class Project < ApplicationRecord
  has_many :feature_categories
  has_many :roles
end
