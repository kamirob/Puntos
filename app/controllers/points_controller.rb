class PointsController < ApplicationController
  before_action :set_point, only: [:show, :edit, :update, :destroy]
  respond_to :js, :json, :html
  # GET /points
  # GET /points.json
  def index
    @points = Point.order(:co).page(params[:page])
  end

  # GET /points/1
  # GET /points/1.json
  def show
    @equipment_point = EquipmentPoint.all    
  end

  # GET /points/new
  def new
    @point = Point.new
    respond_to do |f|
      f.html
      f.js 
    end  
  end

  def add_pv
    if params[:name]
      point = Point.where("LOWER(name) LIKE ?", "%#{params[:name]}%")
      render json: point.map{|v| v.serializable_hash(only: [:id, :name]) }
    else
      render json: ["HOLA"]
    end
  end

  # GET /points/1/edit
  def edit
  end

  # POST /points
  # POST /points.json
  def create
    @point = Point.new(point_params)

    respond_to do |format|
      if @point.save
        format.html { redirect_to @point, success: 'Punto Creado Exitosamente.'}
        format.json { render :show, status: :created, location: @point }
        format.js 
      else
        format.html { render :new }
        format.json { render json: @point.errors, status: :unprocessable_entity }
        format.js 
      end
    end
  end

  # PATCH/PUT /points/1
  # PATCH/PUT /points/1.json
  def update
    respond_to do |format|
      if @point.update(point_params)
        format.html { redirect_to @point, info: 'Punto Actualizado Exitosamente' }
        format.json { render :show, status: :ok, location: @point }
      else
        format.html { render :edit }
        format.json { render json: @point.errors, danger: :unprocessable_entity }
      end
    end
  end

  # DELETE /points/1
  # DELETE /points/1.json
  def destroy
    @point.destroy
    respond_to do |format|
      format.html { redirect_to points_url, danger: 'Punto Eliminado Exitosamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point
      @point = Point.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def point_params
      params.require(:point).permit(:name, :address, :vpn, :co, :anydesk, :isp, :ip, :subnet_mask, :dns1, :dns2)
    end
end
