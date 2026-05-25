class Output
  class FinderService
    class << self
      def find(params)
        params = params.to_unsafe_h.symbolize_keys
        if params[:text].present?
  				$param_type = params[:type]
  				case $param_type
  				when 'name'
            Output.where("#{params[:type]} like ?", "%#{params[:text]}%").all
  				when 'category'
  					Output.joins(:category).where("categories.name like ?", "%#{params[:text]}%").where("input_type = 'Saída'").all
          end
        else
          Output.all
        end
      end
    end
  end
end

