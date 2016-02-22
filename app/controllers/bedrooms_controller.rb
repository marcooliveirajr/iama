class BedroomsController < ApplicationController
  before_action :set_bedroom, only: [:show, :edit, :update, :destroy]

  # GET /bedrooms
  # GET /bedrooms.json
  def index
    #@bedrooms = Bedroom.all
    @bedrooms = Bedroom.all
  end

  # GET /bedrooms/1
  # GET /bedrooms/1.json
  def show
  end

  # GET /bedrooms/new
  def new
    @bedroom = Bedroom.new
  end

  # GET /bedrooms/1/edit
  def edit
  end

  # POST /bedrooms
  # POST /bedrooms.json
  def create
    @bedroom = Bedroom.new(bedroom_params)

    respond_to do |format|
      if @bedroom.save
        format.html { redirect_to @bedroom, notice: 'Quarto criado com sucesso.' }
        format.json { render :show, status: :created, location: @bedroom }
      else
        format.html { render :new }
        format.json { render json: @bedroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bedrooms/1
  # PATCH/PUT /bedrooms/1.json
  def update
    respond_to do |format|
      if @bedroom.update(bedroom_params)
        format.html { redirect_to @bedroom, notice: 'Quarto atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @bedroom }
      else
        format.html { render :edit }
        format.json { render json: @bedroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bedrooms/1
  # DELETE /bedrooms/1.json
  def destroy
    @bedroom.destroy
    respond_to do |format|
      format.html { redirect_to bedrooms_url, notice: 'Quarto excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bedroom
      @bedroom = Bedroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bedroom_params
      params.require(:bedroom).permit(:name)
    end

    def search_params
      params.require(:search).permit(:type, :text)
    end
end
