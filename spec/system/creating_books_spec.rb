
# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[price]", with: 30
    fill_in "book[author]", with: 'jake'
    click_on 'Upload Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content(30)
    expect(page).to have_content('jake')
    #expect(page).to have_content('!!New book is successfully uploaded!!')
  end
end