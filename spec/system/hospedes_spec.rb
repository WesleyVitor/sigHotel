require 'rails_helper'
require 'webdrivers' 
require 'selenium-webdriver'

RSpec.describe "Hospedes", type: :system do
  # before do
  #   driven_by(:selenium)
  # end

  it "load name listagem de hospedes" do
    @driver = Selenium::WebDriver.for(:remote, :url => 'http://192.168.18.30:4444') 
    #@driver = Selenium::WebDriver.for :firefox
    @driver.get "https://www.google.com"
    
    
    #expect(page).to be_true
  end
end
