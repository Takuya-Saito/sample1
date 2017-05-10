class CreateRetweets < ActiveRecord::Migration
  def change
    create_table :retweets do |t|
      t.integer :tweet_id
      t.text :text

      t.timestamps null: false
    end
  end
end
