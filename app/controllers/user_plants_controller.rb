class UserPlantsController < ApplicationController
  before_action :set_user_plant, only: [:show, :edit, :update, :destroy]

  def index
    @user_plants = UserPlant.all
    render json: @user_plants
  end

  def show
    # is this correct way to find plants of that user?
    @user_plants = UserPlant.find_by(params[:user_id])
  end

  def new
    @user_plant = UserPlant.new
  end

  def create
    @user_plant = UserPlant.create!(user_plant_params)
    if @user_plant.save
      render json: {
        status: :created, 
        user_plant: @user_plant
    }
    else
      render json: { status: 500 }    
    end
  end

  def update
    if @user_plant.update(user_plant_params)
      render json: {
        user_plant: @user_plant,
        status: :updated
      }
    else
      render json: @user_plant.errors, status: :unprocessable_entity 
    end
  end

  def destroy
    @user_plant.destroy
      render json: { 
        status: :destroyed 
      }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_plant
      @user_plant = UserPlant.find(params[:id])
    end

    # do these params makes all these fields REQUIRED?
    # Only allow a list of trusted parameters through.
    def user_plant_params

      params.permit(:common_name, :plant_name, :personality, :insight, :story_notes, :image, :difficulty, :sunlight, :moisture, :user_id, :user_icon, :user_name)

      # params.require(:user_plant).permit(:user_id, :user_fav, :user_icon, :user_name, :monograph_id, :common_name, :plant_name, :personality, :insight, :story_notes, :image_url, :difficulty, :sunlight, :moisture)
    end
end
