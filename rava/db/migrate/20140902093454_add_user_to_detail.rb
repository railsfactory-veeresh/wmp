class AddUserToDetail < ActiveRecord::Migration
  def change
    add_reference :details, :user, index: true
  end
end
