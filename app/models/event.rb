class Event < ApplicationRecord
  has_many :topics, through: :meetups
end
