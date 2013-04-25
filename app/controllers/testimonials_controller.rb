# All controllers on this page are generated using scaffolding
#in accordance with REST and MVC 
#Created By:Chris Cruz, Muhammad Naviwala, Gabe Ohlson, Joel Loucks,Matt Liang, Ryan Lee
#Database user checks: Joel Loucks & Gabe Ohlson
#Date Approved: 4/22/2013 by Chris Cruz & Muhammad Naviwala

class TestimonialsController < ApplicationController
  # GET /testimonials
  # GET /testimonials.json
  def index
    @testimonials = Testimonial.all
    @testimonials = Testimonial.search(params[:search])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @testimonials }
    end
  end

  # GET /testimonials/1
  # GET /testimonials/1.json
  def show
    @testimonial = Testimonial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testimonial }
    end
  end

  # GET /testimonials/new
  # GET /testimonials/new.json
  def new
    if signed_in? && is_customer?
      @testimonial = Testimonial.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @testimonial }
      end
    else
      flash[:error] = "You must be signed in to do this"
      redirect_to signin_path
    end
  end

  # GET /testimonials/1/edit
  def edit
    @testimonial = Testimonial.find(params[:id])
  end

  # POST /testimonials
  # POST /testimonials.json
  def create
    @testimonial = Testimonial.new(params[:testimonial])

    respond_to do |format|
      if @testimonial.save
        format.html { redirect_to @testimonial, notice: 'Testimonial was successfully created.' }
        format.json { render json: @testimonial, status: :created, location: @testimonial }
      else
        format.html { render action: "new" }
        format.json { render json: @testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /testimonials/1
  # PUT /testimonials/1.json
  def update
    @testimonial = Testimonial.find(params[:id])

    respond_to do |format|
      if @testimonial.update_attributes(params[:testimonial])
        format.html { redirect_to @testimonial, notice: 'Testimonial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testimonials/1
  # DELETE /testimonials/1.json
  def destroy
    @testimonial = Testimonial.find(params[:id])
    @testimonial.destroy

    respond_to do |format|
      format.html { redirect_to testimonials_url }
      format.json { head :no_content }
    end
  end
end
