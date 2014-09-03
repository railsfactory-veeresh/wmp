class MycartController < ApplicationController
	def index
		@mycart=current_user.line_items.all
end
end