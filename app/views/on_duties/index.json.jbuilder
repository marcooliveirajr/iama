json.array!(@on_duties) do |on_duty|
  json.extract! on_duty, :id, :on_duty_date, :anesthetist
  json.url on_duty_url(on_duty, format: :json)
end
