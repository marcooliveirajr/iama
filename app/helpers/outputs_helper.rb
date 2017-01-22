module OutputsHelper
    
  def outputs_filter 
	Output.joins(:category).where("input_type = ?", "Saída")
  end

end
