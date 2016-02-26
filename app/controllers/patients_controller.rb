class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET /patients
  # GET /patients.json
  def index
    #@patients = Patient.all
    @patients ||= Patient.all
    @patients = make_paginate(@patients)
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Paciente criado com sucesso.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  def search
    @patients = ::Patient::FinderService.find(search_params)
    @patients = make_paginate(@patients)
    if @patients.spresent?
      flash[:error] = nil
      render action: 'index'
    else
      flash[:error] = 'Não encontrou nenhum registro.'
      render action: 'index'
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Paciente atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      if @patient.errors.empty?
        format.html { redirect_to patients_url, notice: 'Paciente excluído com sucesso.' }
        format.json { head :no_content }
      else
        format.html { redirect_to patients_url, alert: 'Não é possível excluir o Paciente pois o mesmo já foi vinculado a um Mapa.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:name, :rg, :cpf, :phone, :email, :address, :address_number, :address_complement, :district, :city, :postal_code, :state, :note)
    end

    def search_params
      params.require(:search).permit(:type, :text)
    end
end
