require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/' " do
    get '/'
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have an Incentive page at '/incentive' " do
    get '/incentive'
    response.should have_selector('title', :content => "Incentive")
  end

  
  it "should have a Help page at '/signin' " do
    get '/signin'
    response.should have_selector('title', :content => "Sign-In")
  end

  it "should have a Help page at '/Contact' " do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end
end
