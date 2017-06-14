require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "Cart counter default is zero" do
    # ACT
    visit root_path

    # DEBUG / VERIFY
    expect(page).to have_content "My Cart (0)"
    save_screenshot
  end

  scenario "Cart counter increases by one after click 'Add to Cart'" do
    # ACT
    visit root_path
    click_on('Add', match: :first)

    # DEBUG / VERIFY
    expect(page).to have_content "My Cart (1)"
    save_screenshot
  end
end