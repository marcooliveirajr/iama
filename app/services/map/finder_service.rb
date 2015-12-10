class Map
  class FinderService
    class << self
      def find(params)
        params = params.with_indifferent_access.symbolize_keys
        # binding.pry
        #Map.where("#{params[:type]} like ?", "%#{params[:text]}%").all
        if params[:text] != ""
  				$param_type = params[:type]
  				case $param_type
  				when 'anesthetist'
  			    #Map.joins(:anesthetist).where(anesthetists: { name: params[:text] })
            Map.joins(:anesthetist).where("name like ?", "%#{params[:text]}%")
  				when 'patient'
  			    Map.joins(:patient).where("name like ?", "%#{params[:text]}%")
  				when 'surgeon'
  			    Map.joins(:surgeon).where("name like ?", "%#{params[:text]}%")
  				when 'hospital'
  			    Map.joins(:hospital).where("name like ?", "%#{params[:text]}%")
  				end
        else
          Map.all
        end
      end
    end
  end
end
