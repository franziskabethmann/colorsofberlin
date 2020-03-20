class Color < ApplicationRecord
  has_many :tags
  has_many :pictures

  validates :name, presence: true, uniqueness: true
end
