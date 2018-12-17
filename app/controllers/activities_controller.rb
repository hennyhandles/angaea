Activity controller
class ActivitiesController < ApplicationController

  def create
    @activity = current_user.acitivities.build(acitivities_params)
    
    flash[:success] = "Activity created!"
    redirect_to portfolio_url #need

  else
    render 'static_pages/home'
  end

  def destroy
    @activity.destroy
    flash[:success] = "Activity deleted"
    redirect_to_request.referrer || root_url
  end

  def danceFEED
    Activity.where("activity_type =?" , Dance)
  end
  #indexs
  def danceFEED
      @activities = Activities.where(type: 'Dance')
  end

  def artFEED
      @activities = Activities.where(type: 'ART')
  end

  def muscFEED
      @activities = Activities.where(type: 'MUSIC')
  end
