module Api
  module V1
    class RoomsController < ApplicationController
      before_action :set_mall
      before_action :set_mall_room, only: [:show, :update, :destroy]
      # GET /malls/:mall_id/rooms
      def index
        json_response(@mall.rooms)
      end
      # GET /malls/:mall_id/rooms/:id
      def show
        json_response(@room)
      end
      # POST /malls/:mall_id/rooms
      def create
        @mall.rooms.create!(room_params)
        json_response(@mall, :created)
      end
      # PUT /malls/:mall_id/rooms/:id
      def update
        @room.update(room_params)
        head :no_content
      end
      # DELETE /malls/:mall_id/rooms/:id
      def destroy
        @room.destroy
        head :no_content
      end
      private
      def room_params
        params.permit(:name, :description, :room_number, :area, :wing, :floor, :opening_time, :closing_time, :phone, :email, :facebook, :instagram, :twitter, :occupied, :mall_id, :category_id, :storeimage, :storeavatar, :website)
      end
      def set_mall
        @mall = Mall.find(params[:mall_id])
      end
      def set_mall_room
        @room = @mall.rooms.find_by!(id: params[:id]) if @mall
      end
    end
  end
end
