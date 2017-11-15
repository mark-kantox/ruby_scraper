require 'spec_helper'

describe 'Expedia' do

  describe 'Home Page' do 
    it 'should welcome and link users' do
      visit root_path
      expect(page).to have_content("Welcome to")
      expect(page).to have_selector(:link_or_button, "Expedia")
    end
  end

  describe 'Expedia Page' do
    it 'should show a list of products' do
      visit expedia_path
      expect(page).to have_content("Expedia Products")
      expect(page).to have_selector(:link_or_button, "Home")
    end
  end
end