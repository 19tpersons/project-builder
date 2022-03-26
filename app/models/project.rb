class Project < ApplicationRecord
  has_many :feature_categories
  has_many :features, through: :feature_categories
  has_many :roles
  has_many :employees, through: :roles

  accepts_nested_attributes_for :feature_categories, :allow_destroy => true

  def test
    byebug
  end
  #accepts_nested_attributes_for :roles, :allow_destroy => true
end