class SizeSurgeriesController < ApplicationController
  before_action :set_size_surgery, only: [:show, :edit, :update, :destroy]

  # GET /size_surgeries
  # GET /size_surgeries.json
  def index
    #@size_surgeries = SizeSurgery.all
    @size_surgeries ||= SizeSurgery.all
    @size_surgeries = make_paginate(@size_surgeries)
  end

  # GET /size_surgeries/1
  # GET /size_surgeries/1.json
  def show
  end

  # GET /size_surgeries/new
  def new
    @size_surgery = SizeSurgery.new
  end

  # GET /size_surgeries/1/edit
  def edit
  end

  # POST /size_surgeries
  # POST /size_surgeries.json
  def create
    @size_surgery = SizeSurgery.new(size_surgery_params)

    respond_to do |format|
      if @size_surgery.save
        format.html { redirect_to @size_surgery, notice: 'Porte criado com sucesso.' }
        format.json { render :show, status: :created, location: @size_surgery }
      else
        format.html { render :new }
        format.json { render json: @size_surgery.errors, status: :unprocessable_entity }
      end
    end
  end

  def search
    @size_surgeries = ::SizeSurgery::FinderService.find(search_params)
    @size_surgeries = make_paginate(@size_surgeries)
    render action: 'index'
  end

  # PATCH/PUT /size_surgeries/1
  # PATCH/PUT /size_surgeries/1.json
  def update
    respond_to do |format|
      if @size_surgery.update(size_surgery_params)
        format.html { redirect_to @size_surgery, notice: 'Porte atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @size_surgery }
      else
        format.html { render :edit }
        format.json { render json: @size_surgery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /size_surgeries/1
  # DELETE /size_surgeries/1.json
  def destroy
    @size_surgery.destroy
    respond_to do |format|
      format.html { redirect_to size_surgeries_url, notice: 'Porte excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_size_surgery
      @size_surgery = SizeSurgery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def size_surgery_params
      params.require(:size_surgery).permit(:health_insurance_id, :size, :value)
    end

    def search_params
      params.require(:search).permit(:type, :text)
    end
end
