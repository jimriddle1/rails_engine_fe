# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Merchant IndexPage' do
  it 'lists the merchants' do

    visit "/merchants"

    expect(page).to have_content("Merchants")
    expect(page).to have_link("Merchant 1")
    expect(page).to have_link("Merchant 2")
    expect(page).to have_link("Merchant 3")

    click_link "Merchant 1"



    expect(current_path).to eq("/merchants/#{Merchant.first.id}")

    expect(page).to have_content("Items")
    expect(page).to have_content("Item 1")
    expect(page).to have_content("Item 2")
    expect(page).to have_content("Item 3")


  end

end
