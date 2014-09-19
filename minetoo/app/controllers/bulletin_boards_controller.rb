class BulletinBoardsController < ApplicationController
  before_action :set_bulletin_board, only: [:show, :edit, :update, :destroy]

  # GET /bulletin_boards
  # GET /bulletin_boards.json
  def index
    @bulletin_boards = BulletinBoard.where('user_id =?', current_user.id)
  end

  # GET /bulletin_boards/1
  # GET /bulletin_boards/1.json
  def show
  end

  # GET /bulletin_boards/new
  def new
    @bulletin_board = BulletinBoard.new
  end

  # GET /bulletin_boards/1/edit
  def edit
  end

  # POST /bulletin_boards
  # POST /bulletin_boards.json
  def create
    @bulletin_board = BulletinBoard.new(bulletin_board_params)
    @bulletin_board.user_id=current_user.id
    respond_to do |format|
      if @bulletin_board.save
        format.html { redirect_to bulletin_boards_path, notice: 'Post was successfully created.'}
        format.json { render :show, status: :created, location: @bulletin_board }
      else
        format.html { render :new }
        format.json { render json: @bulletin_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bulletin_boards/1
  # PATCH/PUT /bulletin_boards/1.json
  def update
    respond_to do |format|
      if @bulletin_board.update(bulletin_board_params)
        format.html { redirect_to @bulletin_board, notice: 'Bulletin board was successfully updated.' }
        format.json { render :show, status: :ok, location: @bulletin_board }
      else
        format.html { render :edit }
        format.json { render json: @bulletin_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bulletin_boards/1
  # DELETE /bulletin_boards/1.json
  def destroy
    @bulletin_board.destroy
    respond_to do |format|
      format.html { redirect_to bulletin_boards_url, notice: 'Bulletin board was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bulletin_board
      @bulletin_board = BulletinBoard.find(params[:id])                                                                                           
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bulletin_board_params
      params.require(:bulletin_board).permit(:user_id, :post)
    end
end
