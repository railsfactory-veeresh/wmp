class MessagesController < ApplicationController
   
  def new
  	@message=Message.new
    
    
  end


  def create
    @message= Message.new(message_params)
    @message.sender_name=current_user.name
    
    respond_to do |format|
      if @message.save

        format.html { redirect_to '/', notice: 'My life was successfully created.' }
        
      else
        format.html { render :new }
        
      end
    end
  end

  
 

  private
  def message_params
    params.require(:message).permit(:message,:reciver_name,:sender_name)
  end

end

  