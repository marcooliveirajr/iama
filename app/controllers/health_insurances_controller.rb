class HealthInsurancesController < ApplicationController
  before_action :set_health_insurance, only: [:show, :edit, :update, :destroy]

  # GET /health_insurances
  # GET /health_insurances.json
  def index
    #@health_insurances = HealthInsurance.all
    @health_insurances ||= HealthInsurance.all
    @health_insurances = make_paginate(@health_insurances)
  end

  # GET /health_insurances/1
  # GET /health_insurances/1.json
  def show
  end

  # GET /health_insurances/new
  def new
    @health_insurance = HealthInsurance.new
  end

  # GET /health_insurances/1/edit
  def edit
  end

  # POST /health_insurances
  # POST /health_insurances.json
  def create
    @health_insurance = HealthInsurance.new(health_insurance_params)

    respond_to do |format|
      if @health_insurance.save
        format.html { redirect_to @health_insurance, notice: 'Convênio criado com sucesso.' }
        format.json { render :show, status: :created, location: @health_insurance }
      else
        format.html { render :new }
        format.json { render json: @health_insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  def search
    @health_insurances = ::HealthInsurance::FinderService.find(search_params)
    @health_insurances = make_paginate(@health_insurances)
    if @health_insurances.present?
      flash[:error] = nil
      render action: 'index'
    else
      flash[:error] = 'Não encontrou nenhum registro.'
      render action: 'index'
    end
  end

  # PATCH/PUT /health_insurances/1
  # PATCH/PUT /health_insurances/1.json
  def update
    respond_to do |format|
      if @health_insurance.update(health_insurance_params)
        format.html { redirect_to @health_insurance, notice: 'Convênio atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @health_insurance }
      else
        format.html { render :edit }
        format.json { render json: @health_insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_insurances/1
  # DELETE /health_insurances/1.json
  def destroy
    @health_insurance.destroy
    respond_to do |format|
      format.html { redirect_to health_insurances_url, notice: 'Convênio excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  def by_version
    @health_insurance ||= HealthInsurance.where(health_terminology: @health_terminology).all
    respond_to do |format|
      format.json { render json: @health_insurance, render: :by_version  }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_insurance
      @health_insurance = HealthInsurance.find(params[:id])
    end

    def set_health_terminology
      @health_terminology = HealthTerminology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_insurance_params
      params.require(:health_insurance).permit(:name, :kind, :status, :health_terminology_id)
    end

    def search_params
      params.require(:search).permit(:type, :text)
    end
end
