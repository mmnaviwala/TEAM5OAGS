# All controllers on this page are generated using scaffolding
#in accordance with REST and MVC 
#Created By:Chris Cruz, Muhammad Naviwala, Gabe Ohlson, Joel Loucks,Matt Liang, Ryan Lee
#Database user checks: Joel Loucks & Gabe Ohlson
#Date Approved: 4/22/2013 by Chris Cruz & Muhammad Naviwala

class DbasController < ApplicationController
  # GET /dbas
  # GET /dbas.json
  def index
    if signed_in? && is_owner?
      @dbas = Dba.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @dbas }
      end
    else
      owner_emp_flash
    end
  end

  # GET /dbas/1
  # GET /dbas/1.json
  def show
    if signed_in? && is_dba? || is_owner?
      @dba = Dba.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @dba }
      end
    else
      not_correct_user
    end
  end

  # GET /dbas/new
  # GET /dbas/new.json
  def new
    if signed_in? && is_owner?
      @dba = Dba.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @dba }
      end
    else
      owner_emp_flash
    end
  end

  # GET /dbas/1/edit
  def edit
    if signed_in? && is_dba?
      @dba = Dba.find(params[:id])
    else
      not_dba_flash
    end
  end

  # POST /dbas
  # POST /dbas.json
  def create
    if signed_in? && is_owner?
      @dba = Dba.new(params[:dba])

      respond_to do |format|
        if @dba.save
          format.html { redirect_to @dba, notice: 'Dba was successfully created.' }
          format.json { render json: @dba, status: :created, location: @dba }
        else
          format.html { render action: "new" }
          format.json { render json: @dba.errors, status: :unprocessable_entity }
        end
      end
    else
      owner_emp_flash
    end
  end

  # PUT /dbas/1
  # PUT /dbas/1.json
  def update
    if signed_in? && is_dba?
      @dba = Dba.find(params[:id])

      respond_to do |format|
        if @dba.update_attributes(params[:dba])
          format.html { redirect_to @dba, notice: 'Dba was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @dba.errors, status: :unprocessable_entity }
        end
      end
    else
      not_dba_flash
    end
  end

  # DELETE /dbas/1
  # DELETE /dbas/1.json
  def destroy
    if is_signed_in? && is_owner?
      @dba = Dba.find(params[:id])
      @dba.destroy

      respond_to do |format|
        format.html { redirect_to dbas_url }
        format.json { head :no_content }
      end
    end
  else
    owner_emp_flash
  end
end
