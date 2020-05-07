json.extract! followship, :id, :follower_id, :following_id, :created_at, :updated_at
json.url followship_url(followship, format: :json)
