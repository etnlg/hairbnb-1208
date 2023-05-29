class CreateWigs < ActiveRecord::Migration[7.0]
  def change
    create_table :wigs do |t|
      t.string :title
      t.text :description
      t.float :price_per_day
      t.string :location

      t.timestamps
    end
  end
end
