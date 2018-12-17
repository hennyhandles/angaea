Activity controller
class ActivitiesController < ApplicationController
#
  def create
    @activity = current_user.acitivities.build(acitivities_params)
    flash[:success] = "Micropost created!"
    redirect_to portfolio_url
  else
    render 'static_pages/home'
  end

  def destroy
  end


  #indexs
  def showDANCE
      @activities = Activities.where(type: 'Dance')
  end

  def showART
      @activities = Activities.where(type: 'ART')
  end

  def showMUSIC
      @activities = Activities.where(type: 'MUSIC')
  end
