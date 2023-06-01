class WigsController < ApplicationController

  def index
    @wigs = Wig.all

    @markers = @wigs.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @wig = Wig.find(params[:id])
    @condition = current_user.id == @wig.user_id
    @booking = Booking.new
  end

  def new
    @wig = Wig.new
  end

  def by_location
    @location = params[:location]
    @wigs = Wig.near(@location, 20)
    @markers = @wigs.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def create
    @wig = Wig.new(wig_params)
    @wig.user_id = current_user.id
    @wig.save!
    redirect_to root_path
  end

  def edit
    @wig = Wig.find(params[:id])
  end

  def destroy
    @wig = Wig.find(params[:id])
    @wig.destroy
    redirect_to root_path
  end

  def update
    @wig = Wig.find(params[:id])
    @wig.update(wig_params)
    redirect_to root_path
  end

  private

  def wig_params
    params.require(:wig).permit(:title, :description, :price_per_day, :location, :photo)
  end
end
