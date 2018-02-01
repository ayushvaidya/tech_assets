class AddColumnsToTechAssets < ActiveRecord::Migration[5.1]
  def change
    add_column :tech_assets, :service_line, :string
    add_column :tech_assets, :industry, :string
    add_column :tech_assets, :technology, :string
    add_column :tech_assets, :maturity, :string
    add_column :tech_assets, :short_description, :string
  end
end
