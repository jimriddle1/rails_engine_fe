# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Merchant IndexPage' do
  it 'lists the merchants' do

    visit "/merchants"

    # expect(page).to have_content("hello")
    # binding.pry
    expect(page).to have_content("Merchants:")
    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("Klein, Rempel and Jones")
    expect(page).to have_link("Willms and Sons")

    click_link "Schroeder-Jerde"

    expect(current_path).to eq("/merchants/1")

    expect(page).to have_content("Items")
    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Expedita Aliquam")
    expect(page).to have_content("Item Provident At")


  end

end
