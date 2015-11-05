class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_destinations_path(current_user)
    else
      render :new
    end
  end

  def destinations
    @users = User.all
    @destinations = Destination.all
  end


  private
  #only allow white-listed fields to be populated and passed
  def user_params
    params.require(:user).permit(:name,:email,:password)
  end
end
