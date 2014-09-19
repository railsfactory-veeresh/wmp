class MybirthdayController < ApplicationController
	def index

  	end

	def display
  	@user=User.where('birth_date =? AND id!=?', current_user.birth_date ,current_user.id)
	end
   
end
