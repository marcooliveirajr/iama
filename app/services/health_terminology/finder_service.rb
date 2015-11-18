class HealthTerminology
  class FinderService
    class << self
      def find(params)
        params = params.with_indifferent_access.symbolize_keys
        HealthTerminology.where("#{params[:type]} like ?", "%#{params[:text]}%").all
      end
    end
  end
end