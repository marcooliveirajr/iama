class PaymentMap
  class UpdaterService
    def self.update(payment_maps, map_id)
      if payment_maps.present?
        PaymentMap.where(map_id: map_id).destroy_all
        payment_maps.each do |name, value|
          PaymentMap.create(
            map_id: map_id,
            payment_id: value[:payment_id],
            payment_date: value[:payment_date],
            pay_day: value[:pay_day],
            payment_value: value[:payment_value],
            paid_value: value[:paid_value],
            recipient: value[:recipient]
            )
        end
      end
    end
  end
end
