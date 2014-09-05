class Detail < ActiveRecord::Base
	has_one :user
	validates :name, :uniqueness => true
	validates :name, :comment, :mobile, presence: true
	validates :comment, length: { maximum: 140 }
	validates_format_of :mobile, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"
end
