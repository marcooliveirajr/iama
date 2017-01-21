class Output
  class FinderService
    class << self
      def find(params)
        params = params.with_indifferent_access.symbolize_keys
        Output.joins(:category).where("input_type = ?", "Saída").where("#{params[:type]} like ?", "%#{params[:text]}%").all
      end
    end
  end
end