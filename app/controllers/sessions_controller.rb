# All controllers on this page are generated using scaffolding
#in accordance with REST and MVC 
#Created By: Gabe Ohlson, Joel Loucks
#Database user checks: Joel Loucks & Gabe Ohlson
#Date Approved: 4/22/2013 by Chris Cruz & Muhammad Naviwala

class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by_username(params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      ###################################################################################
      # Just to display good morning, good evening etc
      time = Time.new
      if time.hour > 17 && time.hour < 24
        # from 5 pm to 12 am
		welcomeString = "Good evening  #{user.type} ! Welcome to TEAM5OAGS. You are now logged in."
		flash.keep[:notice] = welcomeString
      elsif time.hour > 0 && time.hour < 3
        # from 12 am to 3 am
        welcomeString = "Good evening  #{user.type} ! Welcome to TEAM5OAGS. You are now logged in."
		flash.keep[:notice] = welcomeString
      elsif time.hour > 3 && time.hour < 12
        # from 3 am to 12 pm
        welcomeString = "Good morning  #{user.type} ! Welcome to TEAM5OAGS. You are now logged in."
		flash.keep[:notice] = welcomeString
      elsif time.hour > 12 && time.hour < 17
        welcomeString = "Good afternoon  #{user.type} ! Welcome to TEAM5OAGS. You are now logged in."
		flash.keep[:notice] = welcomeString
      end
      ###################################################################################
      redirect_back_or root_path
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

end