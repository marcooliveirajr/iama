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
              start_date = Date.parse(params[:start_date])
              end_date   = Date.parse(params[:end_date])
              OnDuty.where("DATE(on_duty_date) >= ? AND DATE(on_duty_date) <= ?", start_date, end_date).all
            elsif params[:start_date].present?
              start_date = Date.parse(params[:start_date])
              OnDuty.where("DATE(on_duty_date) >= ?", start_date).all
            elsif params[:end_date].present?
              end_date = Date.parse(params[:end_date])
              OnDuty.where("DATE(on_duty_date) <= ?", end_date).all
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
