class RegistrationsController < ApplicationController
  def index
    @registrations = Registration.all
    render :json => @registrations.to_json
  end
end
