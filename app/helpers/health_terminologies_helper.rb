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

  def find_desc_tuss(id) 
    if id != nil
      HealthTerminology.find(id).description_tuss
    end
  end

  def find_code_tuss(id)
    if id != nil  
      HealthTerminology.find(id).code_tuss
    end
  end

  def find_measure_tuss(id)
    if id != nil 
      HealthTerminology.find(id).measure
    end
  end

end
