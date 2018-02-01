class TechAssetsController < ApplicationController
before_action :find_tech_asset, only: [:show, :edit, :update, :destroy]


	def index
		@tech_assets = TechAsset.search(params[:search])
	end
	
  def new
  	@tech_asset = TechAsset.new
  end

  def create
  	@tech_asset = TechAsset.new(tech_asset_params)

  	if @tech_asset.save
  		redirect_to @tech_asset
  	else
  		render 'new'
  	end

  end

  def show
  end

  private

  def tech_asset_params
  	params.require(:tech_asset).permit(:title, :description, :location)
  end

  def find_tech_asset
  	@tech_asset = TechAsset.find(params[:id])
  end
end
