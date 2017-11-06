class Topic < ApplicationRecord
  has_many :events, through: :meetups
end
