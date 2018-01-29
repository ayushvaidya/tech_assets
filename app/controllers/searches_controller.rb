class SearchesController < ApplicationController
	def new
		@search = Search.new
		@locations = TechAsset.pluck(:location).uniq
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
		params.require(:search).permit(:keywords, :location)
	end
end
