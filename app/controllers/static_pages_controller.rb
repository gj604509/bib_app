class StaticPagesController < ApplicationController
  def home
  	 @publication = current_user.publications.build if signed_in?
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
  
end
