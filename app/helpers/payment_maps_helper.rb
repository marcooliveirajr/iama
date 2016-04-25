module PaymentMapsHelper

  def exists_payment_maps?
    ex = false
    if @map.payment_maps.any?
    	ex = true
    end
    if @map.receipt_id?
    	ex = true
    end
    if @map.payment_method_id?
    	ex = true
    end
    if @map.payment_recipient_id?
    	ex = true
    end   
    return ex
  end
end
