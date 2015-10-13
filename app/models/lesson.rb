class Lesson < ActiveRecord::Base
  belongs_to :section

  validates :name, :presence => true, :uniqueness => true
  validates :lesson_content, :presence => true
  validates :section_id, :presence => true

  def next
    if (self == Lesson.last)
      Lesson.first
    else
      next_lesson = Lesson.where("id > (?)", self.id).first
    end
  end

  def previous
    if (self == Lesson.first)
      Lesson.last
    else
      previous_lesson = Lesson.where("id < (?)", self.id).first
    end
  end
end
