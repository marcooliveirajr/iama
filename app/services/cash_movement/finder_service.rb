class CashMovement
  class FinderService
    class << self
      def find(params)
        params = params.with_indifferent_access.symbolize_keys
        if params[:text].present? || params[:date].present?
  				$param_type = params[:type]
  				case $param_type
  				when 'document'
            CashMovement.where("document like ?", "%#{params[:text]}%")
  				when 'input'
  			    CashMovement.joins(:input).where("name like ?", "%#{params[:text]}%")
  				when 'output'
  			    CashMovement.joins(:output).where("name like ?", "%#{params[:text]}%")
          when 'time_movement'
            CashMovement.where("time_movement like ?", "#{Date.parse(params[:date])}%").all
          end
        else
          CashMovement.all
        end
      end
    end
  end
end
