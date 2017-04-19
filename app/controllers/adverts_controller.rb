class AdvertsController < ApplicationController

  before_action :set_advert, only: [:show, :edit, :update, :destroy]

  def index
    @adverts = Advert.all
  end

  def offers
    @adverts = Advert.all.where(role: 1)
  end

  def demandes
    @adverts = Advert.all.where(role: 0)
  end

  def show
    @advert = Advert.find(params[:id])
  end

  def new
    @advert = Advert.new
  end

  def create
    @advert = Advert.new(params_advert)
    #binding.pry
    if @advert.save
      redirect_to advert_path(@advert)
    else
      render :new
    end
  end

  def  destroy
    @advert.destroy
  end

  def edit
  end


  def update
    if @advert.update(advert_params)
      redirect_to advert_path(@advert)
    else
      render :edit
    end
  end

  private

  def params_advert
    params.require(:advert).permit(:type, :title, :description, :price, :role, :category_id, photos: [])
  end

  def set_advert
    @advert = Advert.find(params[:id])
  end
end
