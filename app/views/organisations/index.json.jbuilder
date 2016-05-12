json.array!(@organisations) do |organisation|
  json.extract! organisation, :id, :name, :address, :phone
  json.url organisation_url(organisation, format: :json)
end
