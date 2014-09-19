json.array!(@tell_friends) do |tell_friend|
  json.extract! tell_friend, :id, :friend_name, :friend_email, :birth_date, :message, :sender_name, :sender_email, :user_id
  json.url tell_friend_url(tell_friend, format: :json)
end
