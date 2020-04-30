class AddPublishedToPortfolios < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :published, :boolean, default: false
  end
end
