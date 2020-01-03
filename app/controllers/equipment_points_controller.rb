class EquipmentPointsController < ApplicationController
    before_action :set_equipment_point, only: [:show, :edit, :update, :destroy]
    respond_to :js, :json, :html
    
    def index
      
    end

    def new
      @equipment_point = EquipmentPoint.new
    end
   
    def create
      @equipment_point = EquipmentPoint.new(equipment_point_params)

      respond_to do |format|
        if @equipment_point.save
          format.html { redirect_to @equipment_point, success: 'Equipo Asignado Exitosamente.' }
          format.json { render :show, status: :created, location: @equipment_point }
        else
          format.html { render :new, danger: 'Error al asignar equipo.' }
          format.json { render json: @equipment_point.errors, status: :unprocessable_entity }
        end
      end
    end

    def edit
        
    end

    def update
      respond_to do |format|
        if @equipment_point.update(equipment_point_params)
          format.html { redirect_to @point, info: 'Punto Actualizado Exitosamente' }
          format.json { render :show, status: :ok, location: @equipment_point }
        else
          format.html { render :edit }
          format.json { render json: @equipment_point.errors, danger: :unprocessable_entity }
        end
      end
    end

    private

    def set_equipment_point
        @equipment_point = EquipmentPoint.find(params[:id])  
    end

    def equipment_point_params
        params.require(:equipment_point).permit(:equipment_id, :point_id, :fixed_assets, :serial, :brand)
    end
end
