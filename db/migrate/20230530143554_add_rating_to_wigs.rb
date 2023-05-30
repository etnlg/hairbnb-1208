class AddRatingToWigs < ActiveRecord::Migration[7.0]
  def change
    add_column :wigs, :rating, :float
  end
end
