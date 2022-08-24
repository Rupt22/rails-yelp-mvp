class Review < ApplicationRecord

belongs_to :restaurant 
  validates :rating, presence: true
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
#   validates :rating, acceptance: { accept: ['TRUE', 0, 1, 2, 3, 4, 5] }
  validates :rating, inclusion: {in: 0..5}
  
end
