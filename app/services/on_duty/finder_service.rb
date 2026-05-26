class OnDuty
  class FinderService
    class << self
      def find(params)
        params = params.to_unsafe_h.symbolize_keys
        if params[:text].present? || params[:start_date].present? || params[:end_date].present? || params[:date].present?
          $param_type = params[:type]
          case $param_type
          when 'anesthetist'
            OnDuty.joins(:anesthetist).where("anesthetists.name LIKE ?", "%#{params[:text]}%")
          when 'on_duty_date'
            if params[:start_date].present? && params[:end_date].present?
              start_dt = "#{params[:start_date]} 00:00:00"
              end_dt   = "#{params[:end_date]} 23:59:59"
              OnDuty.where("on_duty_date BETWEEN ? AND ?", start_dt, end_dt).all
            elsif params[:start_date].present?
              start_dt = "#{params[:start_date]} 00:00:00"
              OnDuty.where("on_duty_date >= ?", start_dt).all
            elsif params[:end_date].present?
              end_dt = "#{params[:end_date]} 23:59:59"
              OnDuty.where("on_duty_date <= ?", end_dt).all
            else
              OnDuty.all
            end
          end
        else
          OnDuty.all
        end
      end
    end
  end
end
