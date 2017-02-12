module PaymentMapsHelper

  def exists_payment_maps?
    ex = false
    if @map.payment_maps.any? ||
       @map.payment_method_id? ||
       @map.payment_recipient_id?
        ex = true
    end
    return ex
  end
  
  def exists_receipt?
    ex = false
    if @map.receipt_id? ||
       @map.attachment_receipt? ||
       @map.receipt_value?
    	ex = true
    end
    return ex
  end  
end
