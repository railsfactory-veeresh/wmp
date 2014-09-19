class MyLivesController < ApplicationController
  before_action :set_my_life, only: [:show, :edit, :update, :destroy]

  # GET /my_lives
  # GET /my_lives.json
  def index
    #@event = MyLife.find(params[:id])
    #respond_to do |format|
    #format.js
  end

  # GET /my_lives/1
  # GET /my_lives/1.json
  def show
  
  end


  # GET /my_lives/new
  def new
    if current_user.my_life.blank?
    @my_life = MyLife.new
  else 
    redirect_to '/'
  end
  end

  # GET /my_lives/1/edit
  def edit
  end

  # POST /my_lives
  # POST /my_lives.json
  def create
    @my_life = MyLife.new(my_life_params)
    @my_life.user_id=current_user.id

    respond_to do |format|
      if @my_life.save
        format.html { redirect_to new_quality_path, notice: 'My life was successfully created.' }
        format.json { render :show, status: :created, location: @my_life }
      else
        format.html { render :new }
        format.json { render json: @my_life.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_lives/1
  # PATCH/PUT /my_lives/1.json
  def update
    respond_to do |format|
      if @my_life.update(my_life_params)
        format.html { redirect_to @my_life, notice: 'My life was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_life }
      else
        format.html { render :edit }
        format.json { render json: @my_life.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_lives/1
  # DELETE /my_lives/1.json
  def destroy
    @my_life.destroy
    respond_to do |format|
      format.html { redirect_to my_lives_url, notice: 'My life was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_life
      @my_life = MyLife.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_life_params
      params.require(:my_life).permit(:about_me, :user_id)
    end
end
