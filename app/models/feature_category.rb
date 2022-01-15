class FeatureCategory < ApplicationRecord
  enum category_type: [:epic, :change_request]
end
