module HealthTerminologiesHelper

  def exists_health_terminologies?
    ex = false
    if @map.tuss2?
    	ex = true
    end
    if @map.tuss3?
    	ex = true
    end
    if @map.tuss4?
    	ex = true
    end
    if @map.tuss5?
    	ex = true
    end   
    if @map.via_unique2?
    	ex = true
    end
    if @map.via_unique3?
    	ex = true
    end
    if @map.via_unique4?
    	ex = true
    end
    if @map.via_unique5?
    	ex = true
    end  
    return ex
  end
end
