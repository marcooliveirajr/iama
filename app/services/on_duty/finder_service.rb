class OnDuty
  class FinderService
    class << self
      def find(params)
        params = params.with_indifferent_access.symbolize_keys
        if params[:text].present? || params[:date].present?
  				$param_type = params[:type]
  				case $param_type
  				when 'anesthetist'
            OnDuty.joins(:anesthetist).where("name like ?", "%#{params[:text]}%")
          when 'on_duty_date'
            OnDuty.where("on_duty_date like ?", "#{Date.parse(params[:date])}%").all
  				end
        else
          OnDuty.all
        end
      end
    end
  end
end
