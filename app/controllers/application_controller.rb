class ApplicationController < ActionController::Base
  protect_from_forgery
  #helper :all
  
  include SessionsHelper
  
  # Force signout to prevent CSRF attacks
  #Chris Cruz, Muhammad Naviwala, Gabe Ohlson, Joel Loucks,
  #Matt Liang, Ryan Lee
  #Date Approved: 4/22/2013 by Chris Cruz & Muhammad Naviwala 
  def handle_unverified_request
    sign_out
    super
  end

end
