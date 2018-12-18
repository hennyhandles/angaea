class StaticPagesController < ApplicationController

  def home
    @activities = Activity.categorize_activities
    @art_activities = @activities["art"][0..2]
    @dance_activities = @activities["dance"][0..2]
    @music_activities = @activities["music"][0..2]
  end

  def activities
  end

  def rentals
  end

  def bookings
  end

  def dashboard
  end

  def portfolio
  end

  def settings
  end
end
