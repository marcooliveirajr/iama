class PaymentMap
  class CreaterService
    def self.create(payment_maps, map_id)
      if payment_maps.present?
       payment_maps.each do |name, value|
        PaymentMap.create(
          map_id: map_id,
          payment_date: value[:payment_date],
          payment_value: value[:payment_value],
          paid_value: value[:paid_value]
          )
      end
    end
  end
end
end
