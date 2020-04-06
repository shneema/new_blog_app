class AddPortfolioToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :portfolio, foreign_key: true
  end
end
