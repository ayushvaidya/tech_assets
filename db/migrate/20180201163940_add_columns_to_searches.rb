class AddColumnsToSearches < ActiveRecord::Migration[5.1]
  def change
    add_column :searches, :service_line, :string
    add_column :searches, :industry, :string
    add_column :searches, :technology, :string
    add_column :searches, :maturity, :string
  end
end
