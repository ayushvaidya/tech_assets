class SearchesController < ApplicationController
	def new
		@search = Search.new
		@locations = TechAsset.pluck(:location).uniq
		@industries = TechAsset.pluck(:industry).uniq
		@service_lines = TechAsset.pluck(:service_line).uniq
		@maturities = TechAsset.pluck(:maturity).uniq
		@technologies = TechAsset.pluck(:technology).uniq
	end

	def create
		@search = Search.create(search_params)
		redirect_to @search
	end

	def show
		@search = Search.find(params[:id])
	end

	private

	def search_params
		params.require(:search).permit(:keywords, :location, :industry, :service_line, :maturity, :technology)
	end
end
