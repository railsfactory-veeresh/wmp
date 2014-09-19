class AddReciverNameToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :reciver_name, :string
    add_column :messages, :sender_name, :string
  end
end
