class BulletinBoard < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :about_me, :minimum => 8
end
