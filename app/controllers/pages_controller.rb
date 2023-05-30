class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @wigs = Wig.order('rating DESC')[0..4]
  end
end
