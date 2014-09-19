class CreateTellFriends < ActiveRecord::Migration
  def change
    create_table :tell_friends do |t|
      t.string :friend_name
      t.string :friend_email
      t.datetime :birth_date
      t.text :message
      t.string :sender_name
      t.string :sender_email
      t.references :user, index: true

      t.timestamps
    end
  end
end
