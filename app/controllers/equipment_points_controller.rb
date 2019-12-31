class EquipmentPointsController < ApplicationController

    def index
        @equipment_points = EquipmentPoint.all
        @equipment = Equipment.all
    end
   
    def create
        @equipment = Equipment.find(params[:equipment_point][:equipment_id])
        @point = Point.find(params[:equipment_point][:point_id])

        @equipment_point = @equipment.equipment_points.build(equipment_point_params)
      
        if @equipment_point.save
          redirect_to equipment_point.equipment
        end
    end
      
    private

    def set_equipment
        @equipment_points = EquipmentPoint.find(params[:equipment_id])  
    end

    def equipment_point_params
        params.require(:equipment_point).permit(:equipment_id, :point_id, :fixed_assets, :serial, :brand)
    end
end
