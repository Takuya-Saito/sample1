json.extract! retweet, :id, :tweet_id, :text, :created_at, :updated_at
json.url retweet_url(retweet, format: :json)
