json.array!(@health_terminologies) do |health_terminology|
  json.extract! health_terminology, :id, :code_tuss, :description_tuss, :category_tuss, :ch_surgeon, :size, :number_aux, :version
  json.url health_terminology_url(health_terminology, format: :json)
end
