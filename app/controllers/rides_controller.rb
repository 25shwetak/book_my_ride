# frozen_string_literal: true

class RidesController < ApplicationController
  def index
    @rides = Ride.all.includes(:driver, :ride_requests)
  end

  def create
    redirect_to rides_path
  end
end
