class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.string :text1
      t.string :text2
      t.string :text3
      t.string :text4
      t.string :text5
      t.string :text6
      t.string :text7
      t.string :text8
      t.string :text9
      t.string :text10
      t.string :text11
      t.string :text12
      t.string :text13
      t.string :text14
      t.string :text15
      t.string :text16
      t.string :text17

      t.timestamps
    end
  end
end
