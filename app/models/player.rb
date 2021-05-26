class Player < ApplicationRecord
  belongs_to :team
  validates :name, presence: true
  validates :jersey_number, presence: true
end
