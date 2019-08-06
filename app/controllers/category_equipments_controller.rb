class CategoryEquipmentsController < ApplicationController
  before_action :set_category_equipment, only: [:show, :edit, :update, :destroy]

  # GET /category_equipments
  # GET /category_equipments.json
  def index
    @category_equipments = CategoryEquipment.all
  end

  # GET /category_equipments/1
  # GET /category_equipments/1.json
  def show
  end

  # GET /category_equipments/new
  def new
    @category_equipment = CategoryEquipment.new
  end

  # GET /category_equipments/1/edit
  def edit
  end

  # POST /category_equipments
  # POST /category_equipments.json
  def create
    @category_equipment = CategoryEquipment.new(category_equipment_params)

    respond_to do |format|
      if @category_equipment.save
        format.html { redirect_to @category_equipment, notice: 'Category equipment was successfully created.' }
        format.json { render :show, status: :created, location: @category_equipment }
      else
        format.html { render :new }
        format.json { render json: @category_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_equipments/1
  # PATCH/PUT /category_equipments/1.json
  def update
    respond_to do |format|
      if @category_equipment.update(category_equipment_params)
        format.html { redirect_to @category_equipment, notice: 'Category equipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_equipment }
      else
        format.html { render :edit }
        format.json { render json: @category_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_equipments/1
  # DELETE /category_equipments/1.json
  def destroy
    @category_equipment.destroy
    respond_to do |format|
      format.html { redirect_to category_equipments_url, notice: 'Category equipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_equipment
      @category_equipment = CategoryEquipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_equipment_params
      params.require(:category_equipment).permit(:name)
    end
end
