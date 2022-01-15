class FeatureCategory < ApplicationRecord
  belongs_to :project

  has_many :features

  accepts_nested_attributes_for :features, :allow_destroy => true

  enum category_type: [:epic, :change_request]
end
