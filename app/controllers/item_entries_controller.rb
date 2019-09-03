class ItemEntriesController < ApplicationController
  before_action :set_item_entry, only: [:show, :edit, :update, :destroy]

  # GET /item_entries
  # GET /item_entries.json
  def index
    @item_entries = ItemEntry.all
  end

  # GET /item_entries/1
  # GET /item_entries/1.json
  def show
  end

  # GET /item_entries/new
  def new
    @item_entry = ItemEntry.new
    respond_to do |f|
      f.html
      f.js 
    end  
  end

  # GET /item_entries/1/edit
  def edit
  end

  # POST /item_entries
  # POST /item_entries.json
  def create
    @item_entry = ItemEntry.new(item_entry_params)

    respond_to do |format|
      if @item_entry.save
        format.html { redirect_to @item_entry, notice: 'Item entry was successfully created.' }
        format.json { render :show, status: :created, location: @item_entry }
        format.js
      else
        format.html { render :new }
        format.json { render json: @item_entry.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /item_entries/1
  # PATCH/PUT /item_entries/1.json
  def update
    respond_to do |format|
      if @item_entry.update(item_entry_params)
        format.html { redirect_to @item_entry, notice: 'Item entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_entry }
      else
        format.html { render :edit }
        format.json { render json: @item_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_entries/1
  # DELETE /item_entries/1.json
  def destroy
    @item_entry.destroy
    respond_to do |format|
      format.html { redirect_to item_entries_url, notice: 'Item entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_entry
      @item_entry = ItemEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_entry_params
      params.require(:item_entry).permit(:quantity, :invoice_number, :unit_value, :total_value, :supplier_id, :equipment_id)
    end
end
