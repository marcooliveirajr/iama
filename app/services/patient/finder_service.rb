class Patient
  class FinderService
    class << self
      def find(params)
        params = params.with_indifferent_access.symbolize_keys
        Patient.where("#{params[:type]} like ?", "%#{params[:text]}%").all
      end
    end
  end
end