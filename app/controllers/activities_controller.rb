Activity controller
class ActivitiesController < ApplicationController

  def create
    @activity = current_user.acitivities.build(acitivities_params)

    flash[:success] = "Activity created!"
    redirect_to portfolio_url #need

  else
    render 'static_pages/home'
  end

  def new
    @activity = Activity.new

    render "users/show"
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
      @activities = Activities.where(category: 'Dance')
  end

  def artFEED
      @activities = Activities.where(category: 'ART')
  end

  def muscFEED
      @activities = Activities.where(category: 'MUSIC')
  end
