class AddUseridToWig < ActiveRecord::Migration[7.0]
  def change
    add_reference :wigs, :user, null: false, foreign_key: true
  end
end
