class AddFieldsToPortfolios < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :sub_heading1, :string
    add_column :portfolios, :sub_heading2, :string
    add_column :portfolios, :video_heading, :string
    add_column :portfolios, :image_heading, :string
  end
end
