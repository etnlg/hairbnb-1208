class BookingsController < ApplicationController

  def owner
    @wig_of_the_tenant_ids = Wig.where(user_id: current_user.id).ids
    @bookings = Booking.where(wig_id: @wig_of_the_tenant_ids)
  end

  def client
    @bookings = Booking.where(user_id: current_user.id)
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

end
