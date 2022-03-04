class Feature < ApplicationRecord
  belongs_to :feature_category

  enum status: [:not_started, :in_progress, :done]
end
