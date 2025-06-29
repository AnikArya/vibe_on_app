class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @events = Event.all
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to success_bookings_path(id: @booking.id)
    else
      @events = Event.all
      render :new
    end
  end

  def success
    @booking = Booking.find(params[:id])
    
    qr = RQRCode::QRCode.new(verify_booking_url(@booking))

    @svg = qr.as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 6,
      standalone: true
    )
  end

  def verify
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:name, :email, :event_id)
  end
end
