# All controllers on this page are generated using scaffolding
#in accordance with REST and MVC 
#Created By:Chris Cruz, Muhammad Naviwala, Gabe Ohlson, Joel Loucks,Matt Liang, Ryan Lee
#Database user checks: Joel Loucks & Gabe Ohlson
#Date Approved: 4/22/2013 by Chris Cruz & Muhammad Naviwala

class CsosController < ApplicationController
  # GET /csos
  # GET /csos.json
  def index
    @csos = Cso.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @csos }
    end
  end

  # GET /csos/1
  # GET /csos/1.json
  def show
    @cso = Cso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cso }
    end
  end

  # GET /csos/new
  # GET /csos/new.json
  def new
    @cso = Cso.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cso }
    end
  end

  # GET /csos/1/edit
  def edit
    @cso = Cso.find(params[:id])
  end

  # POST /csos
  # POST /csos.json
  def create
    @cso = Cso.new(params[:cso])

    respond_to do |format|
      if @cso.save
        format.html { redirect_to @cso, notice: 'Cso was successfully created.' }
        format.json { render json: @cso, status: :created, location: @cso }
      else
        format.html { render action: "new" }
        format.json { render json: @cso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /csos/1
  # PUT /csos/1.json
  def update
    @cso = Cso.find(params[:id])

    respond_to do |format|
      if @cso.update_attributes(params[:cso])
        format.html { redirect_to @cso, notice: 'Cso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /csos/1
  # DELETE /csos/1.json
  def destroy
    @cso = Cso.find(params[:id])
    @cso.destroy

    respond_to do |format|
      format.html { redirect_to csos_url }
      format.json { head :no_content }
    end
  end
end
