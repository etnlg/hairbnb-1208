class WigsController < ApplicationController

  def index
    @wigs = Wig.all

    number_chars = @wigs.length.to_s.chars
    number_chars[-1] = '0'
    number = number_chars.join.to_i
    number <= 10 ? @display_number = "More than #{number} wigs available" : @display_number = "#{number} wigs available"
    @markers = @wigs.geocoded.map do |wig|
      {
        lat: wig.latitude,
        lng: wig.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {wig: wig})
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
    @wigs = Wig.near(@location, 50)
    number_chars = @wigs.length.to_s.chars
    number_chars[-1] = '0'
    number = number_chars.join.to_i
    number >= 10 ? @display_number = "More than #{number} wigs available" : @display_number = "#{@wigs.length} wigs available"
    @markers = @wigs.geocoded.map do |wig|
      {
        lat: wig.latitude,
        lng: wig.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {wig: wig})
      }
    end
  end

  def create
    @wig = Wig.new(wig_params)
    @wig.user_id = current_user.id
    @wig.save!
    redirect_to wig_path(@wig)
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
