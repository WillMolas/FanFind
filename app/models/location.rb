class Location < ApplicationRecord
  has_many :events
  has_many :location_reviews
end
