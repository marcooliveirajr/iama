module InputsHelper

  def inputs_filter
  	Input.joins(:category).select("inputs.id, CONCAT(categories.name, ' - ', inputs.name) as cat").where("input_type = 'Entrada'")
  	#Input.joins(:category).where("input_type = 'Entrada'").all
  end
    
end
