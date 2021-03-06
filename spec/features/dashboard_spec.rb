require 'rails_helper'

RSpec.feature "Dashboard", type: :feature do

  before do
    visit root_url
  end

  scenario "user can visit homepage" do
    expect(page.status_code).to eq(200)
  end

  scenario "user can see relevant information" do
    expect(page).to have_content(/...because/i)
  end


end
