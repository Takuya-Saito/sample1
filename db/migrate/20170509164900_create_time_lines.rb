class CreateTimeLines < ActiveRecord::Migration
  def change
    create_table :time_lines do |t|
      t.integer :tweet_id
      t.integer :retweet_id

      t.timestamps null: false
    end
  end
end
