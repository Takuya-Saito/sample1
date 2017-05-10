class Retweet < ActiveRecord::Base
  #association
  belongs_to :tweet
  has_one :time_line, as: :line, dependent: :destroy

  #callback
  after_create :create_time_line
  after_update :update_time_line

  private
  def create_time_line
    self.time_line = TimeLine.create(updated_at: updated_at)
  end

  def update_time_line
    self.time_line.update(updated_at: updated_at)
  end
end
