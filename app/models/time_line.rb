class TimeLine < ActiveRecord::Base
  belongs_to :line, polymorphic: true
end
