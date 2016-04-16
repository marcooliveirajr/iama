class PaymentRecipientsController < ApplicationController
  before_action :set_payment_recipient, only: [:show, :edit, :update, :destroy]

  # GET /payment_recipients
  # GET /payment_recipients.json
  def index
    @payment_recipients = PaymentRecipient.all
  end

  # GET /payment_recipients/1
  # GET /payment_recipients/1.json
  def show
  end

  # GET /payment_recipients/new
  def new
    @payment_recipient = PaymentRecipient.new
  end

  # GET /payment_recipients/1/edit
  def edit
  end

  # POST /payment_recipients
  # POST /payment_recipients.json
  def create
    @payment_recipient = PaymentRecipient.new(payment_recipient_params)

    respond_to do |format|
      if @payment_recipient.save
        format.html { redirect_to @payment_recipient, notice: 'Beneficiário de Pagamento criado com sucesso.' }
        format.json { render :show, status: :created, location: @payment_recipient }
      else
        format.html { render :new }
        format.json { render json: @payment_recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_recipients/1
  # PATCH/PUT /payment_recipients/1.json
  def update
    respond_to do |format|
      if @payment_recipient.update(payment_recipient_params)
        format.html { redirect_to @payment_recipient, notice: 'Beneficiário de Pagamento atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @payment_recipient }
      else
        format.html { render :edit }
        format.json { render json: @payment_recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_recipients/1
  # DELETE /payment_recipients/1.json
  def destroy
    @payment_recipient.destroy
    respond_to do |format|
      format.html { redirect_to payment_recipients_url, notice: 'Beneficiário de Pagamento excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_recipient
      @payment_recipient = PaymentRecipient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_recipient_params
      params.require(:payment_recipient).permit(:name)
    end
end
