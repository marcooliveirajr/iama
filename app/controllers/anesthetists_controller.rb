class AnesthetistsController < ApplicationController
  before_action :set_anesthetist, only: [:show, :edit, :update, :destroy]

  # GET /anesthetists
  # GET /anesthetists.json
  def index
    #@anesthetists = Anesthetist.all
    #@anesthetists = Anesthetist.order("name").page(params['page']).per(3)
    #<%= paginate @anesthetists %>
    per_page   = params[:per_page] if params[:per_page].present?
    @anesthetists = Anesthetist.paginate(:page => params[:page], :per_page => per_page)
  end

  # GET /anesthetists/1
  # GET /anesthetists/1.json
  def show
  end

  # GET /anesthetists/new
  def new
    @anesthetist = Anesthetist.new
  end

  # GET /anesthetists/1/edit
  def edit
  end

  # POST /anesthetists
  # POST /anesthetists.json
  def create
    @anesthetist = Anesthetist.new(anesthetist_params)

    respond_to do |format|
      if @anesthetist.save
        format.html { redirect_to @anesthetist, notice: 'Anesthetist was successfully created.' }
        format.json { render :show, status: :created, location: @anesthetist }
      else
        format.html { render :new }
        format.json { render json: @anesthetist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anesthetists/1
  # PATCH/PUT /anesthetists/1.json
  def update
    respond_to do |format|
      if @anesthetist.update(anesthetist_params)
        format.html { redirect_to @anesthetist, notice: 'Anesthetist was successfully updated.' }
        format.json { render :show, status: :ok, location: @anesthetist }
      else
        format.html { render :edit }
        format.json { render json: @anesthetist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anesthetists/1
  # DELETE /anesthetists/1.json
  def destroy
    @anesthetist.destroy
    respond_to do |format|
      format.html { redirect_to anesthetists_url, notice: 'Anesthetist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anesthetist
      @anesthetist = Anesthetist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anesthetist_params
      params.require(:anesthetist).permit(:name, :cpf, :phone, :email, :address, :address_number, :address_complement, :district, :city, :postal_code, :state)
    end
end
