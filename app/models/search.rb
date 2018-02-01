class Search < ApplicationRecord

	def search_tech_assets

		tech_assets = TechAsset.unscoped

		tech_assets = tech_assets.where("title LIKE ?", "%#{keywords}%") if keywords.present?
		tech_assets = tech_assets.where("location LIKE ?", location) if location.present?

		return tech_assets
	end
end
