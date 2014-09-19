json.array!(@qualities) do |quality|
  json.extract! quality, :id, :conisiderate, :boisterous, :wise, :relaxed, :forward_looking, :intense, :indecisive, :strong, :grounded, :emotional, :demonstrative, :wity, :unaffected, :inscrutable, :mercurial, :user_id
  json.url quality_url(quality, format: :json)
end
