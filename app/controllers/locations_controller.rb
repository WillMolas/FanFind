class LocationsController < ApplicationController
  def index
    @locations = Location.all
    @markers = @locations.geocoded.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude
        # info_window: render_to_string(partial: "info_window", locals: {location: location})
      }
    end
  end
end
