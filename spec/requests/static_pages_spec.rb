require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
   	it "should have the h1 'Visma app'" do
   		visit '/static_pages/home'
   		page.should have_selector('h1', :text => 'Visma app')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Visma App | Home")
    end
    it "it should not have a custom page title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => '| Home')
    end
    
  end

  describe "Help page" do
  	it "should have the h1 'Help'" do
  	  visit '/static_pages/help'
  	  page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Visma App | Help")
    end
  end

  describe "About page" do
    it "should have the h1 'About us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About us')
    end
    
    it "should have the title 'About us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Visma App | About us")
    end
  end
end

