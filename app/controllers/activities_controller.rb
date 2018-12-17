Activity controller
class ActivitiesController < ApplicationController
#
  def showDANCE
      @activities = Activities.where(type: 'Dance')
  end

  def showART
      @activities = Activities.where(type: 'ART')
  end

  def showMUSIC
      @activities = Activities.where(type: 'MUSIC')
  end
