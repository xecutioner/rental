class RentalsController < ApplicationController
  def index
    @rentals = Rental.order(fb_created_time: :desc).all
  end

  def search
  end

  def show
  end
end
