json.array!(@admin_advertisements) do |admin_advertisement|
  json.extract! admin_advertisement, :id
  json.url admin_advertisement_url(admin_advertisement, format: :json)
end
