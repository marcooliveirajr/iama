class HospitalsController < ApplicationController
  before_action :set_hospital, only: [:show, :edit, :update, :destroy]

  # GET /hospitals
  # GET /hospitals.json
  def index
    #@hospitals = Hospital.all
    @hospitals ||= Hospital.all
    @hospitals = make_paginate(@hospitals)
  end

  # GET /hospitals/1
  # GET /hospitals/1.json
  def show
  end

  # GET /hospitals/new
  def new
    @hospital = Hospital.new
  end

  # GET /hospitals/1/edit
  def edit
  end

  # POST /hospitals
  # POST /hospitals.json
  def create
    @hospital = Hospital.new(hospital_params)

    respond_to do |format|
      if @hospital.save
        format.html { redirect_to @hospital, notice: 'Hospital criado com sucesso.' }
        format.json { render :show, status: :created, location: @hospital }
      else
        format.html { render :new }
        format.json { render json: @hospital.errors, status: :unprocessable_entity }
      end
    end
  end

  def search
    @hospitals = ::Hospital::FinderService.find(search_params)
    @hospitals = make_paginate(@hospitals)
    if @hospitals.present?
      flash[:error] = nil
      render action: 'index'
    else
      flash[:error] = 'Não encontrou nenhum registro.'
      render action: 'index'
    end
  end

  # PATCH/PUT /hospitals/1
  # PATCH/PUT /hospitals/1.json
  def update
    respond_to do |format|
      if @hospital.update(hospital_params)
        format.html { redirect_to @hospital, notice: 'Hospital atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @hospital }
      else
        format.html { render :edit }
        format.json { render json: @hospital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospitals/1
  # DELETE /hospitals/1.json
  def destroy
    @hospital.destroy
    respond_to do |format|
      if @hospital.errors.empty?
        format.html { redirect_to hospitals_url, notice: 'Hospital excluído com sucesso.' }
        format.json { head :no_content }
      else
        format.html { redirect_to hospitals_url, alert: 'Não é possível excluir o Hospital pois o mesmo já foi vinculado a um Mapa.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospital
      @hospital = Hospital.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hospital_params
      params.require(:hospital).permit(:name, :kind, :status)
    end

    def search_params
      params.require(:search).permit(:type, :text)
    end
end
