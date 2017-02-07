class Input
  class FinderService
    class << self
      def find(params)
        params = params.with_indifferent_access.symbolize_keys
        if params[:text].present?
  				$param_type = params[:type]
  				case $param_type
  				when 'name'
            Input.where("#{params[:type]} like ?", "%#{params[:text]}%").all
  				when 'category'
  					Input.joins(:category).where("categories.name like ?", "%#{params[:text]}%").where("input_type = 'Entrada'").all
          end
        else
          Input.all
        end
      end
    end
  end
end
