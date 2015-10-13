require 'rails_helper'

describe 'the editing a lesson process' do
  it "edits a lesson" do
    test_section = Section.create({name: "test"})
    test_lesson = test_section.lessons.create({name: "test", lesson_content: "bla"})
    visit section_path(test_section)
    click_on "lesson-id-#{test_lesson.id}"
    fill_in 'Name', with: 'How to crash'
    click_on 'Update Lesson'
    expect(page).to have_content 'How to crash'
  end
end
