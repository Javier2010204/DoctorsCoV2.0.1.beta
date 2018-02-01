class HomeController < ApplicationController
  def index
  	@user = current_user
  	@appointments = current_user.appointments
  end

  def unregistered
  end
end
