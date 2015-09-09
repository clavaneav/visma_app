require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    it "should have the h1 'Visma App'" do
      visit root_path
      page.should have_selector('h1', :text => 'Visma App')
      end

    it "should have the base title" do
      visit root_path
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Visma App')
      end

      it "should not have a custom page title" do
      visit root_path
      page.should have_selector('title', :text => '| Home')
      end
    end

    describe "Help page" do
      it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
      end

    it "should have the base title 'Help'" do
      visit help_path
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Visma App')
      end

      it "should not have a custom page title" do
      visit help_path
      page.should have_selector('title', :text => '| Help')
      end
    end

    describe "About page" do
      it "should have the h1 'About us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
      end

    it "should have the base title 'About us'" do
      visit about_path
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Visma App')
      end

      it "should not have a custom page title" do
      visit about_path
      page.should have_selector('title', :text => '| About')
      end
    end

    describe "Contact page" do
      it "should have the h1 'Contact'" do
        visit contact_path
        page.should have_selector('h1', :text => 'Contact')
      end
      
      it "should have the title 'Contact'" do
        visit contact_path
        page.should have_selector('title', :text => "Ruby on Rails Tutorial Visma App | Contact")
      end
    end
end