json.array!(@soviets) do |soviet|
  json.extract! soviet, :id, :name, :rank, :position, :experience, :about
  json.url soviet_url(soviet, format: :json)
end
