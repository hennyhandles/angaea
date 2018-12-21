class UsersController < ApplicationController
 before_action :logged_in_user, only: [:index, :edit, :update]
 before_action :correct_user, only: [:edit, :update]
 before_action :admin_user,     only: :destroy

 def index
   @users = User.all
 end


 def show
   @user = User.find(params[:id])
   @activity = Activity.new
   @rental = Rental.new
   @rentals = @user.rentals
   @activities = @user.activities #need on bottom of page
 end

 def new
   @user = User.new
 end

def destroy
   @user = User.find(params[:id])
   user.destroy()
end

def confirm_email
  user = User.find_by_confirm_token(params[:id])
  if user_params
    user.email_activated
    flash[:success] = 'Welcome to Angaea! Your acct is now confirmed'
    redirect_to root_url
  else
    flash[:error] = 'Error: User does not exist.'
    redirect_to root_url
end
end

 def create
    p "in users controller"
     @user = User.new(name: user_params[:name], email: user_params[:email], password: user_params[:password], password_confirmation: user_params[:password_confirmation])
     if @user.save!
       UserMailer.registration_confirmation(@user).deliver
       flash[:success] = "Registration completed! Please confirm your email address."
     end
        #'terms_conditions'
      log_in @user
       flash[:success] = "Welcome to the Sample App!"
       redirect_to @user  #redirect_to user_url(@user)
     else
       render 'new'
     end
   end

   #forgot to add log in user before that s why it didnt work

  def edit
      @user = User.find(params[:id])
   end


 def update
   @user = User.find(params[:id])
   if @user.update_attributes(name: user_params[:name], email: user_params[:email], profession: user_params[:profession], skills: user_params[:skills]) && @user.authenticate(user_params[:password])
     flash[:success] = "Profile updated"
     redirect_to @user
   else
     render 'edit'
   end
 end

 def Destroy
   User.find(params[:id]).destroy
  flash[:success] = "User deleted"
  redirect_to users_url
end

   def correct_user
     @user = User.find(params[:id])
     redirect_to(root_url) unless @user == current_user
   end

  private

    def user_params
      params.require(:user).permit(:name, :profession, :skills, :email, :password, :password_confirmation)
    end
        # Confirms a logged-in user.
   def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
   end

   # Confirms the correct user.
   def correct_user
     @user = User.find(params[:id])
     redirect_to(root_url) unless current_user?(@user)
   end


def admin_user
     redirect_to(root_url) unless current_user.admin?
   end
