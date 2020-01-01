class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  def new

  end

  def create
    User.create(first_name: params["first_name"], last_name: params["last_name"], contact_number: params["contact_number"], email: params["email"], password: params["password"])
    redirect_to rides_path
  end

  def index
    @users = User.all
  end
end
