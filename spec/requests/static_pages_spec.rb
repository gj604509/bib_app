require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Bib App'" do
      visit '/static_pages/home'
      page.should have_content('Bib App')
    end
    it "should have the right title" do
  		visit '/static_pages/home'
  		page.should have_selector('title',
                    :text => "Bibliographic Application | Home")
		end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have the right title" do
  		visit '/static_pages/help'
  		page.should have_selector('title',
                    :text => "Bibliographic Application | Help")
		end
  end
  
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    it "should have the right title" do
  		visit '/static_pages/about'
  		page.should have_selector('title',
                    :text => "Bibliographic Application | About Us")
		end
  end
  
  describe "Contact page" do
    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_content('Contact Us')
    end
    it "should have the right title" do
  		visit '/static_pages/contact'
  		page.should have_selector('title',
                    :text => "Bibliographic Application | Contact Us")
		end
  end
  
end
