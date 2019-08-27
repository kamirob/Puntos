class ItemOutputsController < ApplicationController
  before_action :set_item_output, only: [:show, :edit, :update, :destroy]

  # GET /item_outputs
  # GET /item_outputs.json
  def index
    @item_outputs = ItemOutput.order(departure_date: :desc).page(params[:page])
  end

  # GET /item_outputs/1
  # GET /item_outputs/1.json
  def show
  end

  # GET /item_outputs/new
  def new
    @item_output = ItemOutput.new
    respond_to do |f|
      f.html
      f.js 
    end  
  end

  # GET /item_outputs/1/edit
  def edit
  end

  # POST /item_outputs
  # POST /item_outputs.json
  def create
    @item_output = ItemOutput.new(item_output_params)

    respond_to do |format|
      if @item_output.save
        format.html { redirect_to @item_output, notice: 'Item output was successfully created.' }
        format.json { render :show, status: :created, location: @item_output }
        format.js
      else
        format.html { render :new }
        format.json { render json: @item_output.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /item_outputs/1
  # PATCH/PUT /item_outputs/1.json
  def update
    respond_to do |format|
      if @item_output.update(item_output_params)
        format.html { redirect_to @item_output, notice: 'Item output was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_output }
      else
        format.html { render :edit }
        format.json { render json: @item_output.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_outputs/1
  # DELETE /item_outputs/1.json
  def destroy
    @item_output.destroy
    respond_to do |format|
      format.html { redirect_to item_outputs_url, notice: 'Item output was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_output
      @item_output = ItemOutput.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_output_params
      params.require(:item_output).permit(:equipment_id, :departure_date, :quantity, :point_id, :fixed_asset)
    end
end
