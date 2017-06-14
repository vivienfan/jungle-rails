require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do
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

  scenario "Redirect to product details page when click on product name" do
    # ACT
    visit root_path
    click_on @category.products.first.name

    # DEBUG / VERIFY
    expect(page.current_path).to eq product_path(@category.products.first.id)
    # expect(page).to have_css 'article.product', count: 10
  end

  scenario "Redirect to product details page when click on details" do
    # ACT
    visit root_path
    click_on('Details', match: :first)

    # DEBUG / VERIFY
    # products are pushed at the top
    expect(page.current_path).to eq product_path(@category.products.last.id)
  end
end
