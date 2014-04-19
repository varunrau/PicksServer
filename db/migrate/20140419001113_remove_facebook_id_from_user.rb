class RemoveFacebookIdFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :facebook_id, :string
  end
end
