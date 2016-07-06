class MapsController < ApplicationController
  before_action :set_map, only: [:show, :edit, :update, :destroy]

  # GET /maps
  # GET /maps.json
  def index
    #@maps = Map.all
    @maps ||= Map.all
    @maps = make_paginate(@maps)
  end

  # GET /maps/1
  # GET /maps/1.json
  def show
  end

  # GET /maps/new
  def new
    @map = Map.new
  end

  # GET /maps/1/edit
  def edit
  end

  # POST /maps
  # POST /maps.json
  def create
    @map = Map.new(map_params)
    respond_to do |format|
      Map.transaction do
        if @map.save
          ::PaymentMap::CreaterService.create(params[:map][:payment_maps], @map.id)
          format.html { redirect_to @map, notice: 'Mapa criado com sucesso.' }
          format.json { render :show, status: :created, location: @map }
        else
          format.html { render :new }
          format.json { render json: @map.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  def search
    @maps = ::Map::FinderService.find(search_params)
    @maps = make_paginate(@maps)
    if @maps.present?
      flash[:error] = nil
      render action: 'index'
    else
      flash[:error] = 'Não encontrou nenhum registro.'
      render action: 'index'
    end
  end

  # PATCH/PUT /maps/1
  # PATCH/PUT /maps/1.json
  def update
    respond_to do |format|
      Map.transaction do
        if @map.update(map_params)
          ::PaymentMap::UpdaterService.update(params[:map][:payment_maps], @map.id)
          format.html { redirect_to @map, notice: 'Mapa atualizado com sucesso.' }
          format.json { render :show, status: :ok, location: @map }
        else
          format.html { render :edit }
          format.json { render json: @map.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /maps/1
  # DELETE /maps/1.json
  def destroy
    @payment_maps = PaymentMap.where(map_id: @map.id)
    @payment_maps.each do |pay|
      pay.destroy
    end
    @map.destroy
    respond_to do |format|
     format.html { redirect_to maps_url, notice: 'Mapa excluído com sucesso.' }
     format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_map
      @map = Map.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def map_params
      params.require(:map).permit(:time_surgery,
                                  :hospital_id,
                                  :bedroom_id,
                                  :patient_id,
                                  :registration,
                                  :health_terminology_id,
                                  :surgeon_id,
                                  :anesthetist_id,
                                  :health_insurance_id,
                                  :note,
                                  :receipt_id,
                                  :payment_method_id,
                                  :payment_recipient_id,
                                  :tuss2,
                                  :tuss3,
                                  :tuss4,
                                  :tuss5,
                                  :via_unique2,
                                  :via_unique3,
                                  :via_unique4,
                                  :via_unique5,
                                  :start_time,
                                  :end_time,
                                  :password,
                                  :plan,
                                  :hospitalization)
    end

    def search_params
      params.require(:search).permit(:type, :text, :date)
    end
  end
