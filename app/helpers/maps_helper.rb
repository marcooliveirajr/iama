module MapsHelper

  def exists_tuss2?
    ex = false
    if @map.tuss2?
    	ex = true
    end
    return ex
  end  

  def exists_tuss3?
    ex = false
    if @map.tuss3?
    	ex = true
    end
    return ex
  end  

  def exists_tuss4?
    ex = false
    if @map.tuss4?
    	ex = true
    end
    return ex
  end  

  def exists_tuss5?
    ex = false
    if @map.tuss5?
    	ex = true
    end
    return ex
  end  
end
