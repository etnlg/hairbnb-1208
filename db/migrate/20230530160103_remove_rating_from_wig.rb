class RemoveRatingFromWig < ActiveRecord::Migration[7.0]
  def change
    remove_column :wigs, :rating, :float
  end
end
