class Project < ApplicationRecord
  has_many :feature_categories
  has_many :features, through: :feature_categories
  has_many :roles
  has_many :employees, through: :roles

  accepts_nested_attributes_for :feature_categories, :allow_destroy => true


  def project_roles
    project_roles = []
    roles.each do | role |
      #Get project_role and add to list.
    end
  end

  def budgetted_developer_cost
    estimated_hours = features.sum(:estimate)
    
    return developer_blended_rate * estimated_hours
  end

  def actual_developer_cost
    actual_hours = features.sum(:current_hours)

    return developer_blended_rate * actual_hours
  end

  def developer_blended_rate
    total_hourly_cost = roles.developer.sum(:cost_per_hour)

    return total_hourly_cost / roles.developer.count
  end

  def developer_weekly_velocity
      total_daily_velocity = roles.developer.sum(:velocity)
     return 37 * total_daily_velocity / 8 #40 hours - 3 pto
  end
end