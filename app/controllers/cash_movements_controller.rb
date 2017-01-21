class CashMovementsController < ApplicationController
  before_action :set_cash_movement, only: [:show, :edit, :update, :destroy]

  # GET /cash_movements
  # GET /cash_movements.json
  def index
    #@cash_movements = CashMovement.all
    @cash_movements ||= CashMovement.all
    @cash_movements = make_paginate(@cash_movements)
  end

  # GET /cash_movements/1
  # GET /cash_movements/1.json
  def show
  end

  # GET /cash_movements/new
  def new
    @cash_movement = CashMovement.new
  end

  # GET /cash_movements/1/edit
  def edit
  end

  # POST /cash_movements
  # POST /cash_movements.json
  def create
    @cash_movement = CashMovement.new(cash_movement_params)

    respond_to do |format|
      if @cash_movement.save
        format.html { redirect_to @cash_movement, notice: 'Movimento criado com sucesso.' }
        format.json { render :show, status: :created, location: @cash_movement }
      else
        format.html { render :new }
        format.json { render json: @cash_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  def search
    @cash_movements = ::CashMovement::FinderService.find(search_params)
    @cash_movements = make_paginate(@cash_movements)
    if @cash_movements.present?
      flash[:error] = nil
      render action: 'index'
    else
      flash[:error] = 'Não encontrou nenhum registro.'
      render action: 'index'
    end
  end

  # PATCH/PUT /cash_movements/1
  # PATCH/PUT /cash_movements/1.json
  def update
    respond_to do |format|
      if @cash_movement.update(cash_movement_params)
        format.html { redirect_to @cash_movement, notice: 'Movimento atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @cash_movement }
      else
        format.html { render :edit }
        format.json { render json: @cash_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cash_movements/1
  # DELETE /cash_movements/1.json
  def destroy
    @cash_movement.destroy
    respond_to do |format|
      format.html { redirect_to cash_movements_url, notice: 'Movimento excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cash_movement
      @cash_movement = CashMovement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cash_movement_params
      params.require(:cash_movement).permit(:document, :time_movement, :movement_note, :movement_value, :input_id, :output_id)
    end

    def search_params
      params.require(:search).permit(:type, :text)
    end
end
