class AddNumRatingsToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :num_ratings, :integer
  end
end
