require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature do
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

  scenario "Cart counter increases by one after click 'Add to Cart'" do
    # ACT
    visit root_path
    click_on 'Add'

    # DEBUG / VERIFY
    # expect(page.current_path).to eq product_path(@category.products.first.id)
    # expect(page).to have_css 'article.product', count: 10
  end
end