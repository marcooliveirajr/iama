module CategoriesHelper

  def category_input 
	Category.where("input_type = 'Entrada'").all
  end

  def category_output 
	Category.where("input_type = 'Saída'").all
  end

end
