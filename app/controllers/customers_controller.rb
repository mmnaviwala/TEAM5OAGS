# All controllers on this page are generated using scaffolding
#in accordance with REST and MVC 
#Created By:Chris Cruz, Muhammad Naviwala, Gabe Ohlson, Joel Loucks,Matt Liang, Ryan Lee
#Database user checks: Joel Loucks & Gabe Ohlson
#Date Approved: 4/22/2013 by Chris Cruz & Muhammad Naviwala

class CustomersController < ApplicationController
  # GET /customers
  # GET /customers.json
  def index
    if signed_in? && (is_owner? || is_employee? || is_dba?)
      @customers = Customer.all
      @testimonials = Testimonial.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @customers }
      end
    else
      owner_emp_flash
    end
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    if signed_in? && is_customer?#is_owner? || is_employee?
      @customer = Customer.find(params[:id])
      @testimonials = Testimonial.all

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @customer }
      end
    else
      not_correct_user
    end
  end

  # GET /customers/new
  # GET /customers/new.json
  def new
    if signed_in? && is_dba?
     @customer = Customer.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @customer }
      end
    else
      not_dba_flash
    end
  end

  # GET /customers/1/edit
  def edit
    if signed_in? && is_customer? || is_dba?
      @customer = Customer.find(params[:id])
    else
      not_correct_user
    end
  end

  # POST /customers
  # POST /customers.json
  def create
    if signed_in? && is_dba?
     @customer = Customer.new(params[:customer])

      respond_to do |format|
        if @customer.save
          format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
          format.json { render json: @customer, status: :created, location: @customer }
        else
          format.html { render action: "new" }
          format.json { render json: @customer.errors, status: :unprocessable_entity }
        end
      end
    else
      not_dba_flash
    end
  end

  # PUT /customers/1
  # PUT /customers/1.json
  def update
    if signed_in? && is_dba? || is_customer?
      @customer = Customer.find(params[:id])
      respond_to do |format|
        if @customer.update_attributes(params[:customer])
          format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @customer.errors, status: :unprocessable_entity }
        end
      end
    else
      not_correct_user
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    if signed_in? && is_dba?
      @customer = Customer.find(params[:id])
      @customer.destroy

      respond_to do |format|
        format.html { redirect_to customers_url }
        format.json { head :no_content }
      end
    else
    not_dba_flash
    end 
  end
end
