class Restaurant < ApplicationRecord
    validates :name, presence: true
    validates :address, presence: true
    validates :category, presence: true
    validates :category, acceptance: { accept: ['TRUE', "chinese", "italian", "japanese", "french", "belgian"] }
    has_many :reviews, dependent: :destroy 
end
