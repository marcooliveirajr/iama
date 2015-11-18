class HealthTerminologiesController < ApplicationController
  before_action :set_health_terminology, only: [:show, :edit, :update, :destroy]

  # GET /health_terminologies
  # GET /health_terminologies.json
  def index
    #@health_terminologies = HealthTerminology.all
    per_page = params[:per_page] if params[:per_page].present?
    @health_terminologies = HealthTerminology.paginate(:page => params[:page], :per_page => per_page)
  end

  # GET /health_terminologies/1
  # GET /health_terminologies/1.json
  def show
  end

  # GET /health_terminologies/new
  def new
    @health_terminology = HealthTerminology.new
  end

  # GET /health_terminologies/1/edit
  def edit
  end

  # POST /health_terminologies
  # POST /health_terminologies.json
  def create
    @health_terminology = HealthTerminology.new(health_terminology_params)

    respond_to do |format|
      if @health_terminology.save
        format.html { redirect_to @health_terminology, notice: 'Health terminology was successfully created.' }
        format.json { render :show, status: :created, location: @health_terminology }
      else
        format.html { render :new }
        format.json { render json: @health_terminology.errors, status: :unprocessable_entity }
      end
    end
  end

  def search
    @health_terminologies = ::HealthTerminology::FinderService.find(search_params)
    render action: 'index'
  end

  # PATCH/PUT /health_terminologies/1
  # PATCH/PUT /health_terminologies/1.json
  def update
    respond_to do |format|
      if @health_terminology.update(health_terminology_params)
        format.html { redirect_to @health_terminology, notice: 'Health terminology was successfully updated.' }
        format.json { render :show, status: :ok, location: @health_terminology }
      else
        format.html { render :edit }
        format.json { render json: @health_terminology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_terminologies/1
  # DELETE /health_terminologies/1.json
  def destroy
    @health_terminology.destroy
    respond_to do |format|
      format.html { redirect_to health_terminologies_url, notice: 'Health terminology was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_terminology
      @health_terminology = HealthTerminology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_terminology_params
      params.require(:health_terminology).permit(:code_tuss, :description_tuss, :category_tuss, :ch_surgeon, :size, :number_aux, :version)
    end

    def search_params
      params.require(:search).permit(:type, :text)
    end
end
