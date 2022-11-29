class Location < ApplicationRecord
  has_many :events
  has_many :location_reviews

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
