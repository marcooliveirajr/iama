json.array!(@cash_movements) do |cash_movement|
  json.extract! cash_movement, :id, :document, :time_movement, :movement_note, :movement, :_value, :input_id, :output_id
  json.url cash_movement_url(cash_movement, format: :json)
end
