class Order < ActiveRecord::Base
	has_many :line_items
	validates :name, :address,:pay_type, presence: true
	
	 PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
end
