class AlianzasController < ApplicationController
  # GET /alianzas
  # GET /alianzas.json
  def index
    @alianzas = Alianza.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @alianzas }
    end
  end

  # GET /alianzas/1
  # GET /alianzas/1.json
  def show
    @alianza = Alianza.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @alianza }
    end
  end

  # GET /alianzas/new
  # GET /alianzas/new.json
  def new
    @alianza = Alianza.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @alianza }
    end
  end

  # GET /alianzas/1/edit
  def edit
    @alianza = Alianza.find(params[:id])
  end

  # POST /alianzas
  # POST /alianzas.json
  def create
    @alianza = Alianza.new(params[:alianza])

    respond_to do |format|
      if @alianza.save
        format.html { redirect_to @alianza, notice: 'Alianza was successfully created.' }
        format.json { render json: @alianza, status: :created, location: @alianza }
      else
        format.html { render action: "new" }
        format.json { render json: @alianza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /alianzas/1
  # PUT /alianzas/1.json
  def update
    @alianza = Alianza.find(params[:id])

    respond_to do |format|
      if @alianza.update_attributes(params[:alianza])
        format.html { redirect_to @alianza, notice: 'Alianza was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @alianza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alianzas/1
  # DELETE /alianzas/1.json
  def destroy
    @alianza = Alianza.find(params[:id])
    @alianza.destroy

    respond_to do |format|
      format.html { redirect_to alianzas_url }
      format.json { head :no_content }
    end
  end
end
