class ProductsController < ApplicationController

  load_and_authorize_resource
  skip_authorize_resource :only => [:index, :edit, :show]

  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @mall = Mall.find(params[:mall_id])
    @room = Room.find(params[:room_id])
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @mall = Mall.find(params[:mall_id])
    @room = Room.find_by(id: params[:room_id])
    @product = @room.products.new(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to mall_room_path(@room), notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to mall_room_products_path, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    @room = Room.find(params[:room_id])
    Product.import(@room, params[:file])
    redirect_to mall_room_path(@room.mall_id, @room), notice: "successfully uploaded your products"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :mall_id, :room_id)
    end
end
