# All controllers on this page are generated using scaffolding
#in accordance with REST and MVC 
#Created By: Gabe Ohlson, Joel Loucks, Chris Berkowitz
#Updated By: Matthew Liang
#Database user checks: Joel Loucks & Gabe Ohlson
#Date Approved: 4/22/2013 by Chris Cruz & Muhammad Naviwala

class ReportsController < ApplicationController
  
  def customer_artist_preference
    customer_id = params[:customer_id]
    @transactions = Transaction.scoped
    @transactions = @transactions.where(:customer_id => customer_id) if customer_id.present?
    @customer = Customer.find(params[:customer_id])
    #@transactions = Transaction.where(params[:customer_id])
    #@transactions = Transaction.find_by_customer_id(params[:id])
  end

  def past_purchase
    customer_id = params[:customer_id]
    #@transaction = Transaction.where(params[:customer_id])
    @transaction = Transaction.scoped
    @transaction = @transaction.where(:customer_id => customer_id) if customer_id.present?
    @customer = Customer.find(params[:customer_id])
  end

  def past_purchase_artwork_location
    customer_id = params[:customer_id]
    @transactions = Transaction.scoped
    @transactions = @transactions.where(:customer_id => customer_id) if customer_id.present?
    @customer = Customer.find(params[:customer_id])
  end

  def artist_works
    @artists = Artist.where("last_name LIKE ? OR first_name LIKE ?", params[:name], params[:name])
    #@artist = Artist.find(params[:artist_id])
  end

  def speed_of_sale
    artist_id = params[:artist_id]
    @works = Work.scoped
    @works = @works.where(:artist_id => artist_id).where('date_sold NOT NULL') if artist_id.present?
    
    #@works = Work.joins(:transactions).where(params[:artist_id])
    #@works = Work.where(params[:post]).where('date_sold NOT NULL')
    #@works.each do |w|
    #  t = Transaction.find_by_work_id(w.id)
     # w.profit = t.sales_price - w.acquisition_price
  end
end
