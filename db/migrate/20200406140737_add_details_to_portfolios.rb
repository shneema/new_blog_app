class AddDetailsToPortfolios < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :heading, :string
    add_column :portfolios, :sub_head1, :string
    add_column :portfolios, :sub_head2, :string
    add_column :portfolios, :sub_head3, :string
    add_column :portfolios, :sub_head4, :string
    add_column :portfolios, :sub_head5, :string
    add_column :portfolios, :sub_head6, :string
    add_column :portfolios, :sub_head7, :string
    add_column :portfolios, :sub_head8, :string
    add_column :portfolios, :sub_head9, :string
    add_column :portfolios, :sub_head10, :string
    add_column :portfolios, :sub_head11, :string
    add_column :portfolios, :sub_head12, :string
    add_column :portfolios, :sub_head13, :string
    add_column :portfolios, :sub_head14, :string
    add_column :portfolios, :sub_head15, :string
    add_column :portfolios, :sub_head16, :string
    add_column :portfolios, :sub_head17, :string
  end
end
