class User < ApplicationRecord
  has_many :checkings
  has_many :savings
  has_many :games
end
