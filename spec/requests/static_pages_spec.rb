require 'spec_helper'

describe "StaticPages" do
  
  #inputs symbol ":base_title" to allow for setting title
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page } # lets the page variable be the subject of tests

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',   text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) } #Using the 'full_title' helper found in spec/support/utilities.rb
  end

  describe "Help page" do
    before { visit help_path }

  	it { should have_selector('h1', text: "Help") }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1', text: "About Us") }
    it { should have_selector('title', text: full_title('About')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1', text: "Contact") }
    it { should have_selector('title', text: full_title('Contact')) }
  end
end
