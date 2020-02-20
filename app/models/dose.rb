class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  has_many :doses

  DESCRIPTIONS = ['cl', 'ml', 'pieces', 'cups']
  AMOUNT = [1, 2, 3, 4, 5, 10, 100, 200, 500, 1000]

  validates :description, presence: true, inclusion: { in: DESCRIPTIONS }
  validates :cocktail, uniqueness: { scope: :ingredient }
end
