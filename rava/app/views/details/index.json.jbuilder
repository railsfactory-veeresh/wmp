json.array!(@details) do |detail|
  json.extract! detail, :id, :name, :comment, :mobile
  json.url detail_url(detail, format: :json)
end
