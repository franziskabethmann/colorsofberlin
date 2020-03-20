class Picture < ApplicationRecord
  has_many :tags
  has_many :colors, through: :tags

  validates :photo, presence: true, uniqueness: true
  validates :date, presence: true
  validates :address, presence: true
end
