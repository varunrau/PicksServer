class AddJoinTableAssociations < ActiveRecord::Migration
  def change
    add_column :users, :view_id, :integer
    add_column :pictures, :view_id, :integer
  end
end
