module CategoriesHelper
    
  def outputs_filter 
    Category.where("input_type = ?", "Saída")
  end

  def inputs_filter 
    Category.where("input_type = ?", "Entrada")
  end
end
