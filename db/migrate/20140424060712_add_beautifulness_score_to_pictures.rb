class AddBeautifulnessScoreToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :beauty_score, :double
  end
end
