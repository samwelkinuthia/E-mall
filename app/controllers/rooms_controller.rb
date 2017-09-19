class RoomsController < ApplicationController
  load_and_authorize_resource
  skip_authorize_resource only: %i[index show]

  before_action :set_room, only: %i[show edit update destroy]

  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all
    @mall = Mall.find_by(params[:id])
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
    @mall = Mall.find_by(id: params[:mall_id])
    @room = Room.find(params[:id])
    @products = @room.products
  end

  # GET /rooms/new
  def new
    @room = Room.new
  end

  # GET /rooms/1/edit
  def edit
    @mall = Mall.find(params[:mall_id])
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @mall = Mall.find(params[:id])
    @mall.total_rooms

    @mall = Mall.find_by(id: params[:mall_id])
    @category = Category.all
    @room = @mall.rooms.new(room_params)
    respond_to do |format|
      if @room.save
        format.html { redirect_to @mall, notice: 'Room was successfully created.' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new }
        format.json { render json: @mall.errors, status: :unprocessable_entity }
      end
    end
  end



  # PATCH/PUT /rooms/1
  # PATCH/PUT /rooms/1.json
  def update
    respond_to do |format|
      if @room.update!(room_params)
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url, notice: 'Room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_room
    @room = Room.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def room_params
    params.require(:room).permit(:name, :description, :room_number, :area, :wing, :floor, :opening_time, :closing_time, :phone, :email, :facebook, :instagram, :twitter, :occupied, :mall_id, :category_id, :storeimage, :storeavatar, :website)
  end
end
