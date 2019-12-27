# frozen_string_literal: true

class RideRequestsController < ApplicationController
  @@rideid
  def index
    @requests = RideRequest.where(ride_id: params['ride_id'])
  end

  def new
    @@rideid = params["ride_id"]
  end

  def create
    obj = User.find_by(email: params["email"])
    RideRequest.create(destination: params["destination"], status: "Booked", user_id: obj.id, ride_id: @@rideid)
    redirect_to rides_path
  end
end
