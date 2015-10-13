require 'rails_helper'

describe 'the deleting a section process' do
  it "deletes a section" do
    visit '/sections'
    click_on "Create new sections"
    fill_in 'Name', with: 'C++'
    click_on 'Create Section'
    click_on 'C++'
    click_on "Delete"
    expect(page).to have_no_content 'C++'
  end
end
