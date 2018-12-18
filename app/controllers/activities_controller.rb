class ActivitiesController < ApplicationController

  def create
    @activity = current_user.acitivities.build(acitivities_params)
    flash[:success] = "Activity created!"
    redirect_to portfolio_url

  else
    render 'static_pages/home'
  end

  def destroy
    @activity.destroy
    flash[:success] = "Activity deleted"
    redirect_to_request.referrer || root_url
  end


  def danceFEED
      @activities = Activities.where(type: 'Dance')
  end

  def artFEED
      @activities = Activities.where(type: 'ART')
  end

  def muscFEED
      @activities = Activities.where(type: 'MUSIC')
  end


  private:

  def activities_params
    params.require(:activity).permit(:content, :aditional_info, :user, :cost, :type, :picture,
                                                :addressLN1, :addressLN2, :city, :state, :zip)
    end
  end
