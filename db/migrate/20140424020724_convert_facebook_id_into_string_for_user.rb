class ConvertFacebookIdIntoStringForUser < ActiveRecord::Migration
  def change
    change_column :users, :facebook_id, :string
  end
end
