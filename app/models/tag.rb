class Tag < ApplicationRecord
  belongs_to :picture
  belongs_to :color

  validates :picture, uniqueness: { scope: :color }
  validates :color, presence: true
end
