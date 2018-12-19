class ActivitiesController < ApplicationController

  def create
    @activity = Activity.new(activity_name: activity_params[:activity_name], content: activity_params[:content], additional_info: activity_params[:additional_info], user_id: current_user.id, start_date: activity_params[:start_date], end_date: activity_params[:end_date], picture: activity_params[:picture], addressLN1: activity_params[:addressLN1], addressLN2: activity_params[:addressLN2], city: activity_params[:city], state: activity_params[:state], cost: activity_params[:cost], zip: activity_params[:zip])
    p activity_params[:category]
    @category = Category.find_by(category_name: activity_params[:category])
    if @activity.save
      @tag = Tag.new(activity_id: @activity.id, category_id: @category.id)
      if @tag.save
        redirect_to user_path(current_user)
      end
    else
      redirect_to user_path(current_user)
    end
  end

  def show
    @activity = Activity.find(params[:id])
    @tags = @activity.categories
  end

  def edit
    @activity = current_user.activities.find(params[:id])
  end

  def update
    @activity = current_user.activities.find(params[:id])
    if @activity.update_attributes(activity_name: activity_params[:activity_name], content: activity_params[:content], additional_info: activity_params[:additional_info], user_id: current_user.id, start_date: activity_params[:start_date], end_date: activity_params[:end_date], picture: activity_params[:picture], addressLN1: activity_params[:addressLN1], addressLN2: activity_params[:addressLN2], city: activity_params[:city], state: activity_params[:state], cost: activity_params[:cost], zip: activity_params[:zip])
      redirect_to user_path(current_user)
    else
      redirect_to user_path(current_user)
    end 
  end

  def destroy
    @activity = current_user.activities.find(params[:id])
    @activity.destroy
    redirect_to user_path(current_user)
  end


  private
  def activity_params
    params.require(:activity).permit(:activity_name, :content, :category, :additional_info, :cost, :start_date, :end_date, :picture, :addressLN1, :addressLN2, :city, :state, :zip)
  end
end
