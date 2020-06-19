class Review < ApplicationRecord
  belongs_to :cocktail
  validates :content, :author, :rating, presence: true
  validates :rating, inclusion: { in: (1..5).to_a }, numericality: { only_integer: true }
end
