require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
  	it "should have the content 'Home'" do
      visit root_path
      expect(page).to have_content('Home') 
    end
  end
end
