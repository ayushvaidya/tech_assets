class Search < ApplicationRecord

	def search_tech_assets

		tech_assets = TechAsset.unscoped

		tech_assets = tech_assets.where("title LIKE ?", "%#{keywords}%") if keywords.present?
		tech_assets = tech_assets.where("service_line LIKE ?", service_line) if service_line.present?
		tech_assets = tech_assets.where("location LIKE ?", location) if location.present?
		tech_assets = tech_assets.where("industry LIKE ?", industry) if industry.present?
		tech_assets = tech_assets.where("technology LIKE ?", technology) if technology.present?
		tech_assets = tech_assets.where("maturity LIKE ?", maturity) if maturity.present?

		return tech_assets
	end
end
