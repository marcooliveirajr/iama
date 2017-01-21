class Category
  class FinderService
    class << self
      def find(params)
        params = params.with_indifferent_access.symbolize_keys
        if params[:text].present?
					$param_type = params[:type]
					case $param_type
					when 'input'
            Category.where("input_type like ?", "%#{params[:text]}%")
          when 'name'
            Category.where("#{params[:type]} = ?", params[:text]).all
  		  end
        else
          Category.all
        end
      end
    end
  end
end
