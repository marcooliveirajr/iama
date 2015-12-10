class Map
  class FinderService
    class << self
      def find(params)
        params = params.with_indifferent_access.symbolize_keys
        # binding.pry
        #Map.where("#{params[:type]} like ?", "%#{params[:text]}%").all
				$param_type = params[:type]
				case $param_type
				when 'anesthetist'
			    Map.joins(:anesthetist).where(anesthetists: { name: params[:text] })
				when 'patient'
			    Map.joins(:patient).where(patients: { name: params[:text] })
				when 'surgeon'
			    Map.joins(:surgeon).where(surgeons: { name: params[:text] })
				when 'hospital'
			    Map.joins(:hospital).where(hospitals: { name: params[:text] })
				end
      end
    end
  end
end
