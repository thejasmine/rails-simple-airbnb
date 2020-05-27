class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end


  def create
    @flat = Flat.new(flat_pararms)
    if @flat.save
      redirect_to @flat, notice: 'Flat was successfully created.'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @flat.update(flat_pararms)
      redirect_to @flat, notice: 'Flat was successfully created.'
    else
      render 'new'
    end
  end

  def destroy
    @flat.destroy
  end

  def top
    @flats = Flat.where(rating:5)
  end

  def worst
    @flats = Flat.where(rating:1)
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_pararms
    params.require(:flat).permit(:name, :address, :price_per_night, :number_of_guests, :description)
  end
end
