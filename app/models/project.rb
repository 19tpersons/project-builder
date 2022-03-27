class Project < ApplicationRecord
  has_many :feature_categories
  has_many :features, through: :feature_categories
  has_many :roles
  has_many :employees, through: :roles

  accepts_nested_attributes_for :feature_categories, :allow_destroy => true

  #scope :developers, -> { roles.where(role: :developer)&.employees }

  def test
    byebug
  end

  def budgetted_cost
    estimated_hours = features.sum(:estimate)
  end

  def actual_cost
    actual_hours = features.sum(:current_hours)
  end

  def developer_blended_rate

  end
end