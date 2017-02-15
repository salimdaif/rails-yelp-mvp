class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: CATEGORY, allow_nil: false}

end
