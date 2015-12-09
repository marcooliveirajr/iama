class Map
  class FinderService
    class << self
      def find(params)
        params = params.with_indifferent_access.symbolize_keys
        #binding.pry
        #Map.where("#{params[:type]} like ?", "%#{params[:text]}%").all

				$param_type = params[:type]
				case $param_type
				when 'anesthetist'
					Map.joins('LEFT OUTER JOIN "anesthetists" ON "maps"."anesthetist_id" = "anesthetists"."id"').where(anesthetists: { name: "%#{params[:text]}%" })
			    #Map.joins(:anesthetists).where(anesthetists: { name: "%#{params[:text]}%" })
				when 'patient'
			    puts "little child"
				when 'surgeon'
			    puts "child"
				when 'hospital'
			    puts "youth"
				end        
      end
    end
  end
end