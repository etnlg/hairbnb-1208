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
end
