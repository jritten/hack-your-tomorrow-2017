class Checking < ApplicationRecord
  belongs_to :user
  has_many :games, through: :user
end
