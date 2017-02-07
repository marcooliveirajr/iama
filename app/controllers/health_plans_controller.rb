class HealthPlansController < ApplicationController
  before_action :set_health_plan, only: [:show, :edit, :update, :destroy]

  # GET /health_plans
  # GET /health_plans.json
  def index
    #@health_plans = HealthPlan.all
    @health_plans ||= HealthPlan.all
    @health_plans = make_paginate(@health_plans)
  end

  # GET /health_plans/1
  # GET /health_plans/1.json
  def show
  end

  # GET /health_plans/new
  def new
    @health_plan = HealthPlan.new
  end

  # GET /health_plans/1/edit
  def edit
  end

  # POST /health_plans
  # POST /health_plans.json
  def create
    @health_plan = HealthPlan.new(health_plan_params)

    respond_to do |format|
      if @health_plan.save
        format.html { redirect_to @health_plan, notice: 'Plano criado com sucesso.' }
        format.json { render :show, status: :created, location: @health_plan }
      else
        format.html { render :new }
        format.json { render json: @health_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  def search
    @health_plans = ::HealthPlan::FinderService.find(search_params)
    @health_plans = make_paginate(@health_plans)
    if @health_plans.present?
      flash[:error] = nil
      render action: 'index'
    else
      flash[:error] = 'Não encontrou nenhum registro.'
      render action: 'index'
    end
  end

  # PATCH/PUT /health_plans/1
  # PATCH/PUT /health_plans/1.json
  def update
    respond_to do |format|
      if @health_plan.update(health_plan_params)
        format.html { redirect_to @health_plan, notice: 'Plano atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @health_plan }
      else
        format.html { render :edit }
        format.json { render json: @health_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_plans/1
  # DELETE /health_plans/1.json
  def destroy
    @health_plan.destroy
    respond_to do |format|
      if @health_plan.errors.empty?
        format.html { redirect_to health_plans_url, notice: 'Plano excluído com sucesso.' }
        format.json { head :no_content }
      else
        format.html { redirect_to health_plans_url, alert: 'Não é possível excluir o Plano pois existe Cirurgia cadastrado para o mesmo.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_plan
      @health_plan = HealthPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_plan_params
      params.require(:health_plan).permit(:name, :kind, :status)
    end

    def search_params
      params.require(:search).permit(:type, :text)
    end
end
