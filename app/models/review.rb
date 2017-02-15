class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = [0,1,2,3,4,5]
  validates :content, presence: true
  validates :rating, inclusion: { in: RATING, allow_nil: false}, presence: true, numericality: { only_integer: true }
end
