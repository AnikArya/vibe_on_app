class WelcomeController < ApplicationController
  def vibe_on
 @events = Event.all.order(created_at: :desc)
  end
end
