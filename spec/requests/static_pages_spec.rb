require 'spec_helper'

describe "StaticPages" do
  
  describe "Home Page" do
    
    it "should have the content 'Use Thinkit to remember and share what you learn" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit 'static_pages/home'
      page.should have_content('Use Thinkit to remember and share what you learn')
    end

  end

end
