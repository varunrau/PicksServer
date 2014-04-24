class ChangeFacebookIdToStringOnPicture < ActiveRecord::Migration
  def change
    change_column :pictures, :facebook_id, :string
  end
end
