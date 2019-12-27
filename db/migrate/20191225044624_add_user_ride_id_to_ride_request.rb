# frozen_string_literal: true

class AddUserRideIdToRideRequest < ActiveRecord::Migration[5.2]
  def change
    add_reference :ride_requests, :user, foreign_key: true
    add_reference :ride_requests, :ride, foreign_key: true
  end
end
