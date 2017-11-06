class Meetup < ApplicationRecord
  belongs_to :topic
  belongs_to :event
end
