class Event < ApplicationRecord
  belongs_to :location
  belongs_to :match
  belongs_to :user
end
