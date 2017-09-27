module Api
  module V1
    class MallsController < ApplicationController
      respond_to :json
      def index
        malls = Mall.order('created_at DESC');
        render json: {status: 'SUCCESS',message:'Loaded malls', data:malls},status: :ok
      end
      def show
      	mall = Mall.find(params[:id])
      	render json: {status: 'SUCCESS',message:'Loaded mall', data:mall},status: :ok
      end
      def create
      	mall = Mall.new(mall_params)
      	if mall.save
      		render json: {status: 'SUCCESS',message:'Saved mall', data:mall},status: :ok
      	else
      		render json: {status: 'ERROR',message:'Mall not saved', data:mall.errors},status: :unprocessable_entity
      	end
      end

      def update
      	mall = Mall.find(params[:id])
      	if mall.update_attributes(mall_params)
      		render json: {status: 'SUCCESS',message:'Updated mall', data:mall},status: :ok
      	else
      		render json: {status: 'ERROR',message:'Mall not updated', data:mall.errors},status: :unprocessable_entity
      	end
      end

      def destroy
      	mall = Mall.find(params[:id])
      	mall.destroy
      	render json: {status: 'SUCCESS',message:'Deleted mall', data:mall},status: :ok
      end

      private

      def mall_params
      	params.permit(:name, :mallpicture, :address, :total_rooms, :parking_space, :description, :email, :phone_no, :opening_time, :closing_time, :rooms_status, mall_attachments_attributes: %i[id mall_id avatar])
      end
    end
  end
end
