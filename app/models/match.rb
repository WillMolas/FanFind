class Match < ApplicationRecord
  has_many :events, dependent: :destroy
end
