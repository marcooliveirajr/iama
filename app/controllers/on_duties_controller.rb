class OnDutiesController < ApplicationController
  before_action :set_on_duty, only: [:show, :edit, :update, :destroy]

  # GET /on_duties
  # GET /on_duties.json
  def index
    @on_duties = OnDuty.where("on_duty_date >= ?", Time.current.beginning_of_day).order(on_duty_date: :asc)
    @on_duties = make_paginate(@on_duties)
  end

  # GET /on_duties/1
  # GET /on_duties/1.json
  def show
  end

  # GET /on_duties/new
  def new
    @on_duty = OnDuty.new
  end

  # GET /on_duties/1/edit
  def edit
  end

  # POST /on_duties
  # POST /on_duties.json
  def create
    @on_duty = OnDuty.new(on_duty_params)

    respond_to do |format|
      if @on_duty.save
        format.html { redirect_to on_duties_url, notice: 'Plantão criado com sucesso.' }
        format.json { render :index, status: :created, location: @on_duty }
      else
        format.html { render :new }
        format.json { render json: @on_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  def search
    @on_duties = ::OnDuty::FinderService.find(search_params)
    @on_duties = @on_duties.order(on_duty_date: :desc)
    @on_duties = make_paginate(@on_duties)
    if @on_duties.present?
      flash[:error] = nil
      render action: 'index'
    else
      flash[:error] = 'Não encontrou nenhum registro.'
      render action: 'index'
    end
  end

  # PATCH/PUT /on_duties/1
  # PATCH/PUT /on_duties/1.json
  def update
    respond_to do |format|
      if @on_duty.update(on_duty_params)
        format.html { redirect_to on_duties_url, notice: 'Plantão alterado com sucesso.' }
        format.json { render :index, status: :ok, location: @on_duty }
      else
        format.html { render :edit }
        format.json { render json: @on_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /on_duties/1
  # DELETE /on_duties/1.json
  def destroy
    @on_duty.destroy
    respond_to do |format|
      format.html { redirect_to on_duties_url, notice: 'Plantão excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_on_duty
      @on_duty = OnDuty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def on_duty_params
      params.require(:on_duty).permit(:on_duty_date, 
                                      :anesthetist_id, 
                                      :note,
                                      :end_time)
    end

    def search_params
      params.require(:search).permit(:type, :text, :date, :start_date, :end_date)
    end
end
