module OutputsHelper

  def outputs_filter 
	Output.joins(:category).select("outputs.id, CONCAT(categories.name, ' - ', outputs.name) as cat").where("input_type = 'Saída'")
	#Output.joins(:category).where("input_type = 'Saída'").all
  end
  
end
