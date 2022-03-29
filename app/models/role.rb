class Role < ApplicationRecord
  belongs_to :project
  belongs_to :employee
  
  has_many :activities

  accepts_nested_attributes_for :activities, :allow_destroy => true

  enum role_type: [:developer, :developer_lead, :business_analyst, :user_experience, :quality_assurance, :project_management, :oversight]
end
