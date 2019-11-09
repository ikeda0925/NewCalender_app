class HomeController < ApplicationController
  def top
    @events = Event.where(user_id: current_user.id)
  end
end
