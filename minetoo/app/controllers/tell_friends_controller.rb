class TellFriendsController < ApplicationController
  before_action :set_tell_friend, only: [:show, :edit, :update, :destroy]

  # GET /tell_friends
  # GET /tell_friends.json
  def index
    @tell_friends = TellFriend.all
  end

  # GET /tell_friends/1
  # GET /tell_friends/1.json
  def show
  end

  # GET /tell_friends/new
  def new
    @tell_friend = TellFriend.new
    
  end

  # GET /tell_friends/1/edit
  def edit
  end

  # POST /tell_friends
  # POST /tell_friends.json
  def create
    @tell_friend = TellFriend.new(tell_friend_params)
    @tell_friend.user_id=current_user

    respond_to do |format|

      
      if @tell_friend.save
         Request.sent(@tell_friend).deliver
         
        format.html { redirect_to @tell_friend, notice: 'Tell friend was successfully created.' }
        format.json { render :show, status: :created, location: @tell_friend }
      else
        format.html { render :new }
        format.json { render json: @tell_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tell_friends/1
  # PATCH/PUT /tell_friends/1.json
  def update
    respond_to do |format|
      if @tell_friend.update(tell_friend_params)
        format.html { redirect_to @tell_friend, notice: 'Tell friend was successfully updated.' }
        format.json { render :show, status: :ok, location: @tell_friend }
      else
        format.html { render :edit }
        format.json { render json: @tell_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tell_friends/1
  # DELETE /tell_friends/1.json
  def destroy
    @tell_friend.destroy
    respond_to do |format|
      format.html { redirect_to tell_friends_url, notice: 'Tell friend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tell_friend
      @tell_friend = TellFriend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tell_friend_params
      params.require(:tell_friend).permit(:friend_name, :friend_email, :birth_date, :message, :sender_name, :sender_email, :user_id)
    end
end
