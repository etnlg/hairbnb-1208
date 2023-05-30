class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @wigs = Wig.order('price_per_day DESC')[0..4]
  end
end
