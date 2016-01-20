class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :edit, :update, :destroy]


  def index
    @user = current_user
    @destinations = @user.destinations.all
    @destination = Destination.new
  end

  def show
    @user = current_user
    @destination = Destination.find(params[:id])
    @instagram = JSON.parse(Instagram.tag_recent_media(@destination.city.tr(' ','')).to_json)
  end

  def new
    @destination = Destination.new
  end

  def edit
    @destination = Destination.find(params[:id])
  end

  def create
    @destination = current_user.destinations.new(destination_params)

    respond_to do |format|
      if @destination.save
        format.html { redirect_to user_destination_path(current_user, @destination), notice: 'Destination was successfully created.' }
        format.json { render :show, status: :created, location: @destination }
      else
        format.html { render :new }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @destination = Destination.find(params[:id])
    respond_to do |format|
      if @destination.update(destination_params)
        format.html { redirect_to user_destination_path(current_user, @destination), notice: 'Destination was successfully updated.' }
        format.json { render :show, status: :ok, location: @destination }
      else
        format.html { render :edit }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
    respond_to do |format|
      format.html { redirect_to user_destinations_path(current_user), notice: 'Destination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_destination
    @destination = Destination.new
  end

  def destination_params
    params.require(:destination).permit(:city, :location, :description, :user_id, :site_seen)
  end
end
