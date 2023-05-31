class BookingsController < ApplicationController

  def owner
    @wig_of_the_tenant_ids = Wig.where(user_id: current_user.id).ids
    @bookings = Booking.where(wig_id: @wig_of_the_tenant_ids)
  end

  def client
    @bookings = Booking.where(user_id: current_user.id)
  end

  def choice
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.wig_id = params[:wig_id]
    @booking.save!
    redirect_to booking_client_path
  end

  def accept
    # @booking = Booking.find(params[:id])
    Booking.update(params[:id], :satuts => 'accepted')
    # @booking.satuts = "accepted"
    redirect_to booking_owner_path
  end

  def decline
    # @booking = Booking.find(params[:id])
    Booking.update(params[:id], :satuts => 'declined')
    # @booking.satuts = "accepted"
    redirect_to booking_owner_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :wig_id, :user_id)
  end

end
