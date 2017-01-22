module InputsHelper

  def inputs_filter 
	Input.joins(:category).where("input_type = ?", "Entrada")
  end
    
end
