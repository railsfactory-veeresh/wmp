class TellFriend < ActiveRecord::Base
  belongs_to :user
  validates :friend_name, :sender_name, :presence => { :message => "must required" }
  validates :friend_email, :sender_email, format: { with: /\A[^@\s]+@([^@.\s]+\.)*[^@.\s]+\z/ }
 
  
end
