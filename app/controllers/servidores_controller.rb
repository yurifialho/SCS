class ServidoresController < ApplicationController
  # GET /servidores
  # GET /servidores.json
  def index
    @servidores = Servidor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @servidores }
    end
  end

  # GET /servidores/1
  # GET /servidores/1.json
  def show
    @servidor = Servidor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @servidor }
    end
  end

  # GET /servidores/new
  # GET /servidores/new.json
  def new
    @servidor = Servidor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @servidor }
    end
  end

  # GET /servidores/1/edit
  def edit
    @servidor = Servidor.find(params[:id])
  end

  # POST /servidores
  # POST /servidores.json
  def create
    @servidor = Servidor.new(params[:servidor])

    respond_to do |format|
      if @servidor.save
        format.html { redirect_to @servidor, notice: 'Servidor was successfully created.' }
        format.json { render json: @servidor, status: :created, location: @servidor }
      else
        format.html { render action: "new" }
        format.json { render json: @servidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /servidores/1
  # PUT /servidores/1.json
  def update
    @servidor = Servidor.find(params[:id])

    respond_to do |format|
      if @servidor.update_attributes(params[:servidor])
        format.html { redirect_to @servidor, notice: 'Servidor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @servidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servidores/1
  # DELETE /servidores/1.json
  def destroy
    @servidor = Servidor.find(params[:id])
    @servidor.destroy

    respond_to do |format|
      format.html { redirect_to servidores_url }
      format.json { head :no_content }
    end
  end
end
