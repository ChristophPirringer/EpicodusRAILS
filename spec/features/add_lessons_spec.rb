require 'rails_helper'

describe 'the adding a lesson process' do
  it "adds a new lesson" do
    visit '/sections'
    click_on "Create new sections"
    fill_in 'Name', with: 'C++'
    click_on 'Create Section'
    click_on 'C++'
    click_on "New Lesson"
    fill_in 'Name', with: 'How to fly'
    fill_in 'Lesson content', with: 'Jump off a roof and forget to hit the ground'
    click_on 'Create Lesson'
    expect(page).to have_content 'How to fly'
  end
end
