class RemoveColumnFromTimeLine < ActiveRecord::Migration
  def change
    remove_column :time_lines, :tweet_id, :integer
    remove_column :time_lines, :retweet_id, :integer
  end
end
