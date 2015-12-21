class PaymentMapsController < ApplicationController
  before_action :set_payment_map, only: [:show, :edit, :update, :destroy]

  # GET /payment_maps
  # GET /payment_maps.json
  def index
    @payment_maps = PaymentMap.all
  end

  # GET /payment_maps/1
  # GET /payment_maps/1.json
  def show
  end

  # GET /payment_maps/new
  def new
    @payment_map = PaymentMap.new
  end

  # GET /payment_maps/1/edit
  def edit
  end

  # POST /payment_maps
  # POST /payment_maps.json
  def create
    @payment_map = PaymentMap.new(payment_map_params)

    respond_to do |format|
      if @payment_map.save
        format.html { redirect_to @payment_map, notice: 'Payment map was successfully created.' }
        format.json { render :show, status: :created, location: @payment_map }
      else
        format.html { render :new }
        format.json { render json: @payment_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_maps/1
  # PATCH/PUT /payment_maps/1.json
  def update
    respond_to do |format|
      if @payment_map.update(payment_map_params)
        format.html { redirect_to @payment_map, notice: 'Payment map was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment_map }
      else
        format.html { render :edit }
        format.json { render json: @payment_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_maps/1
  # DELETE /payment_maps/1.json
  def destroy
    @payment_map.destroy
    respond_to do |format|
      format.html { redirect_to payment_maps_url, notice: 'Payment map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_map
      @payment_map = PaymentMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_map_params
      params.require(:payment_map).permit(:map_id, :payment_id, :payment_date, :payment_value, :paid_value)
    end
end
