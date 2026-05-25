class HealthPlan
  class FinderService
    class << self
      def find(params)
        params = params.to_unsafe_h.symbolize_keys
        HealthPlan.where("#{params[:type]} like ?", "%#{params[:text]}%").all
      end
    end
  end
end