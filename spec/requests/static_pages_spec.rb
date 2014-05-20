require 'spec_helper'

describe "Static pages" do
  let(:normal_title) { "Ruby on Rails Tutorial Sample App" }
    
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit root_path
    end
    
    it "should have the base title" do
      visit root_path
      expect(page).to have_title("#{normal_title}")
    end
    
    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end
  
  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end
    
    it "should have the right title" do
      visit help_path
      expect(page).to have_title("#{normal_title} | Help")
    end
  end
  
  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end
    
    it "should have the right title" do
      visit about_path
      expect(page).to have_title("#{normal_title} | About")
    end
  end
  
  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end
    
    it "should have the right title" do
      visit contact_path
      expect(page).to have_title("#{normal_title} | Contact")
    end
  end
  
end
