# frozen_string_literal: true

class CreateRideRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :ride_requests do |t|
      t.string :destination
      t.string :status
      t.timestamps
    end
  end
end
