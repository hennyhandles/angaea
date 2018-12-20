class RentalsController < ApplicationController
  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    if @rental.save!
      redirect_to user_path(current_user)
    else
      redirect_to root_path
    end
  end

  private
  def rental_params
    params.require(:rental).permit(:cost, :rental_name, :description, :category, :additional_info, :contact_number, :contact_email, :addresss2, :addressLN1, :state, :city, :zipcode, :start_date, :end_date)
  end
end
