class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  has_attachment :image

  validates :name, uniqueness: true, presence: true
end
