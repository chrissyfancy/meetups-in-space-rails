class Meetup < ApplicationRecord
  belongs_to :event
  belongs_to :topic
end