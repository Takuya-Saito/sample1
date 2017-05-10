class Tweet < ActiveRecord::Base
  #callback
  after_create :create_time_line

  #association
  has_many :retweets, dependent: :destroy
  has_one :time_line, as: :line, dependent: :destroy

  private
  def create_time_line
    self.time_line = TimeLine.create(updated_at: self.updated_at)
  end
end
