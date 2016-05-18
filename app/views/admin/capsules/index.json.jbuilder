json.array!(@admin_capsules) do |admin_capsule|
  json.extract! admin_capsule, :id
  json.url admin_capsule_url(admin_capsule, format: :json)
end
