class Section < ActiveRecord::Base
  has_many :lessons
  has_many :feedbacks
  validates :name, :presence => true
end
