json.array!(@contests) do |contest|
  json.extract! contest, :id, :title, :description
  json.url contest_url(contest, format: :json)
end
