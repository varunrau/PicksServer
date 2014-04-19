class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :num_liked
      t.integer :facebook_id

      t.timestamps
    end
  end
end
