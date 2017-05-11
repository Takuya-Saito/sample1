class TopController < ApplicationController
  def index
    @tweet = Tweet.new
    @time_lines = TimeLine.page(params[:page]).per(5)
    @time_lines_resource = @time_lines.map(&:line)
  end
end
