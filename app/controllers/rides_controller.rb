class RidesController < ApplicationController
  def index
    @rides = Ride.all.includes(:driver, :ride_requests)
  end
end
