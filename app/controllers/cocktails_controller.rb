class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
    @doses = Dose.find_by(params[:cocktail_id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    permitted_params = params.require(:cocktail).permit(:name)
    if params[:cocktail][:image].present?
      permitted_params[:image] = params[:cocktail][:image]
    else
      permitted_params[:image] = params[:cocktail][:image_url]
    end
    permitted_params
  end
end
