# All controllers on this page are generated using scaffolding
#in accordance with REST and MVC 
#Created By:Chris Cruz, Muhammad Naviwala, Gabe Ohlson, Joel Loucks,Matt Liang, Ryan Lee
#Database user checks: Joel Loucks & Gabe Ohlson
#Date Approved: 4/22/2013 by Chris Cruz & Muhammad Naviwala


class ArtistsController < ApplicationController
  # GET /artists
  # GET /artists.json
  def index
    if signed_in? && (is_owner? || is_employee?)
      @artists = Artist.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @artists }
      end
    else
      owner_emp_flash
    end
  end

  # GET /artists/1
  # GET /artists/1.json
  def show
    if signed_in? && is_owner? || is_employee?
      @artist = Artist.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @artist }
      end
    else
      not_correct_user
    end
  end

  # GET /artists/new
  # GET /artists/new.json
  def new
    if signed_in? && is_dba?
      @artist = Artist.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @artist }
      end
    else
      not_dba_flash
    end
  end

  # GET /artists/1/edit
  def edit
    if signed_in? && (is_dba? || is_artist?)
      @artist = Artist.find(params[:id])
    else
      not_correct_user
    end
  end

  # POST /artists
  # POST /artists.json
  def create
    if signed_in? && is_dba?
      @artist = Artist.new(params[:artist])

      respond_to do |format|
        if @artist.save
          format.html { redirect_to @artist, notice: 'Artist was successfully created.' }
          format.json { render json: @artist, status: :created, location: @artist }
        else
          format.html { render action: "new" }
          format.json { render json: @artist.errors, status: :unprocessable_entity }
        end
      end
    else
      not_dba_flash
    end
  end

  # PUT /artists/1
  # PUT /artists/1.json
  def update
    if signed_in? && (is_dba? || is_artist?)
      @artist = Artist.find(params[:id])

      respond_to do |format|
        if @artist.update_attributes(params[:artist])
          format.html { redirect_to @artist, notice: 'Artist was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @artist.errors, status: :unprocessable_entity }
        end
      end
    else
      not_correct_user
    end
  end

  # DELETE /artists/1
  # DELETE /artists/1.json
  def destroy
    if signed_in? && is_dba?
      @artist = Artist.find(params[:id])
      @artist.destroy

      respond_to do |format|
        format.html { redirect_to artists_url }
        format.json { head :no_content }
      end
    else
      not_dba_flash
    end
  end

end
