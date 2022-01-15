class FeatureCategory < ApplicationRecord
  belongs_to :project

  has_many :features

  enum category_type: [:epic, :change_request]
end
