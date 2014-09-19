class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def thoughts
  end

  def paradox
  end

  def faq
  end

  def inbox
    @message=Message.where('reciver_name = ?',current_user.name).all.order('created_at DESC')

  end
  
end
