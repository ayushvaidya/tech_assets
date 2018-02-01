class AddLocationToTechAssets < ActiveRecord::Migration[5.1]
  def change
    add_column :tech_assets, :location, :string
  end
end
