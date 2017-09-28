module Api
  module V1
    class ProductsController < ApplicationController
      before_action :set_room
      before_action :set_room_products, only: [:show, :update, :destroy]
      # GET /malls/:mall_id/rooms/room_id/products
      def index
        json_response(@room.products)
      end
      # GET /malls/:mall_id/rooms/:room_id/products/:id
      def show
        json_response(@product)
      end
      # POST /malls/:mall_id/rooms/:room_id/products
      def create
        @room.products.create!(products_params)
        json_response(@room, :created)
      end
      # PUT /malls/:mall_id/rooms/:room_id/products/:id
      def update
        @product.update(product_params)
        head :no_content
      end
      # DELETE /malls/:mall_id/rooms/:room_id/products/:id
      def destroy
        @product.destroy
        head :no_content
      end
      private
      def product_params
        params.permit(:name, :price, :mall_id, :room_id)
      end
      def set_room
        @room = Room.find(params[:room_id])
      end
      def set_room_products
        @product = @room.products.find_by!(id: params[:id]) if @room
      end
    end
  end
end