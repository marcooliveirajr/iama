class SizeSurgery
  class FinderService
    class << self
      def find(params)
        params = params.to_unsafe_h.symbolize_keys
        if params[:text].present?
					$param_type = params[:type]
					case $param_type
					when 'health_insurance'
            SizeSurgery.joins(:health_insurance).where("name like ?", "%#{params[:text]}%")
          when 'measure'
            SizeSurgery.where("#{params[:type]} = ?", params[:text]).all
  				end
        else
          SizeSurgery.all
        end
      end
    end
  end
end
