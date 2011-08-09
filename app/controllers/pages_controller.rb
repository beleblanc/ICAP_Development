class PagesController < ApplicationController
 
  
  def home
    @title = "Home"
    
  end

  def contact
    @title = "Contact Out There Solutions"
  end

  def help
    @title = "Help"
    
  end

end
