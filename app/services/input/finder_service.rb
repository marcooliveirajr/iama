class Input
  class FinderService
    class << self
      def find(params)
        params = params.with_indifferent_access.symbolize_keys
        Input.joins(:category).where("input_type = ?", "Entrada").where("#{params[:type]} like ?", "%#{params[:text]}%").all
      end
    end
  end
end