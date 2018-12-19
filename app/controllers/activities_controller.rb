class ActivitiesController < ApplicationController

  def create
    @activity = Activity.new(activities_params)
    if @activity.save
    flash[:success] = "Activity created!"
  redirect_to user_path(current_user)
  #@user
  else
    redirect_to user_path(current_user)
  end
end

  def new
    @activity = Activity.new
  end

  def show
    @activity = Activity.find(params[:id])
    @tags = @activity.categories
  end

  def clicked

  end

  def destroy
    @activity.destroy
    flash[:success] = "Activity deleted"
    redirect_to_request.referrer || root_url
  end


  def danceFEED
      @activities = Activities.where(category: 'Dance')
  end

  def artFEED
      @activities = Activities.where(category: 'ART')
  end

  def muscFEED
      @activities = Activities.where(category: 'MUSIC')
  end


  private

  def activities_params
    params.require(:activity).permit(:activity_name, :content, :aditional_info, :user, :cost, :catagory, :picture,
                                                                :addressLN1, :addressLN2, :city, :state, :zip)
    end
  end
