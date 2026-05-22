class Map
  class FinderService
    class << self
      def find(params)
        params = params.to_unsafe_h.symbolize_keys
        if params[:text].present? || params[:date].present?
  				$param_type = params[:type]
  				case $param_type
  				when 'anesthetist'
            Map.joins(:anesthetist).where("name like ?", "%#{params[:text]}%")
  				when 'patient'
  			    Map.joins(:patient).where("name like ?", "%#{params[:text]}%")
  				when 'surgeon'
  			    Map.joins(:surgeon).where("name like ?", "%#{params[:text]}%")
  				when 'hospital'
  			    Map.joins(:hospital).where("name like ?", "%#{params[:text]}%")
          when 'time_surgery'
            val = params[:date].present? ? params[:date] : params[:text]
            Map.where("time_surgery like ?", "%#{val}%")
          when 'health_insurance'
            Map.joins(:health_insurance).where("name like ?", "%#{params[:text]}%")
          end
        else
          Map.all
        end
      end
    end
  end
end
