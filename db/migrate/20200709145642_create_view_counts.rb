class CreateViewCounts < ActiveRecord::Migration[6.0]
  def change
    create_table :view_counts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
