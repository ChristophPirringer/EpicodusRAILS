require 'rails_helper'

describe 'the adding a section process' do
  it "adds a new section" do
    visit '/sections'
    click_on "Create new sections"
    fill_in 'Name', with: 'C++'
    click_on 'Create Section'
    expect(page).to have_content 'C++'
  end
end
