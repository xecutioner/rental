class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def search
  end

  def show
  end
end
