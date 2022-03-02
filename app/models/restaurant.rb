class Restaurant < ApplicationRecord
  has_many :reviews ,dependent: :destroy
  Food = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true

  validates :category, inclusion: { in: Food }
end
