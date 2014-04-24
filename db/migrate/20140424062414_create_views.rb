class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.string :facebook_id
      t.integer :picture_id

      t.timestamps
    end
  end
end
