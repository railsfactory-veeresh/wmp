json.array!(@my_lives) do |my_life|
  json.extract! my_life, :id, :about_me, :user_id
  json.url my_life_url(my_life, format: :json)
end
