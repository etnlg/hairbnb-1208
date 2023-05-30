class WigsController < ApplicationController

  def index
    @wigs = Wig.all
  end

  def show
    @wig = Wig.find(params[:id])
  end

  def new
    @wig = Wig.new
  end

  def create
    @wig = Wig.new(wig_params)
    @wig.user_id = current_user.id
    @wig.save
    redirect_to wig_path(@wig)
  end

  private

  def wig_params
    params.require(:wig).permit(:title, :description, :price_per_day, :location)
  end
end
