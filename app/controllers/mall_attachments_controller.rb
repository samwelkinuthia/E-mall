class MallAttachmentsController < ApplicationController
  before_action :set_mall_attachment, only: [:show, :edit, :update, :destroy]

  # GET /mall_attachments
  # GET /mall_attachments.json
  def index
    @mall_attachments = MallAttachment.all
  end

  # GET /mall_attachments/1
  # GET /mall_attachments/1.json
  def show
  end

  # GET /mall_attachments/new
  def new
    @mall_attachment = MallAttachment.new
  end

  # GET /mall_attachments/1/edit
  def edit
  end

  # POST /mall_attachments
  # POST /mall_attachments.json
  def create
    @mall_attachment = MallAttachment.new(mall_attachment_params)

    respond_to do |format|
      if @mall_attachment.save
        format.html { redirect_to @mall_attachment, notice: 'Mall attachment was successfully created.' }
        format.json { render :show, status: :created, location: @mall_attachment }
      else
        format.html { render :new }
        format.json { render json: @mall_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mall_attachments/1
  # PATCH/PUT /mall_attachments/1.json
  def update
    respond_to do |format|
      if @mall_attachment.update(mall_attachment_params)
        format.html { redirect_to @mall_attachment, notice: 'Mall attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @mall_attachment }
      else
        format.html { render :edit }
        format.json { render json: @mall_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mall_attachments/1
  # DELETE /mall_attachments/1.json
  def destroy
    @mall_attachment.destroy
    respond_to do |format|
      format.html { redirect_to mall_attachments_url, notice: 'Mall attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mall_attachment
      @mall_attachment = MallAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mall_attachment_params
      params.require(:mall_attachment).permit(:mall_id, :avatar)
    end
end
