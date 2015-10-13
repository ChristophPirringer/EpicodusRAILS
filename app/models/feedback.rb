class Feedback < ActiveRecord::Base
  belongs_to :section
  validates :content, :presence => true
end
