module CashMovementsHelper

  def input_category(cash_movement)
    if cash_movement != nil
      Category.find(cash_movement.input.category_id).name
    end
  end

  def output_category(cash_movement)
    if cash_movement != nil
      Category.find(cash_movement.output.category_id).name
    end
  end

end
