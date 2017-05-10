json.extract! time_line, :id, :tweet_id, :retweet_id, :created_at, :updated_at
json.url time_line_url(time_line, format: :json)
