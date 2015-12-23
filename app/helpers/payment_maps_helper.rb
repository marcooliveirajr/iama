module PaymentMapsHelper
  def exists_payment_maps?
    @map.payment_maps.any?
  end
end
