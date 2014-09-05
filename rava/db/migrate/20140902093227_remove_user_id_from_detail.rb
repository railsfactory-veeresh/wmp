class RemoveUserIdFromDetail < ActiveRecord::Migration
  def change
    remove_column :details, :user_id, :integer
  end
end
