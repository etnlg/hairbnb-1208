class WigsController < ApplicationController

  def index
    @wigs = Wig.all
  end

end
