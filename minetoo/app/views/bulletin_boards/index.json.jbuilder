json.array!(@bulletin_boards) do |bulletin_board|
  json.extract! bulletin_board, :id, :user_id, :post
  json.url bulletin_board_url(bulletin_board, format: :json)
end
