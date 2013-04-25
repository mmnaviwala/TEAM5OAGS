# All controllers on this page are generated using scaffolding
#in accordance with REST and MVC 
#Created By:Chris Cruz, Muhammad Naviwala, Gabe Ohlson, Joel Loucks,Matt Liang, Ryan Lee
#Database user checks: Joel Loucks & Gabe Ohlson
#Date Approved: 4/22/2013 by Chris Cruz & Muhammad Naviwala

class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def chat
  end

  def testimonials
  end

  def gallery
    @works = Work.all
  end
end
