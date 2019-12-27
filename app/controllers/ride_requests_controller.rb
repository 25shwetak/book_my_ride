# frozen_string_literal: true

class RideRequestsController < ApplicationController
  def index
    @requests = RideRequest.where(ride_id: params['ride_id'])
  end
end
