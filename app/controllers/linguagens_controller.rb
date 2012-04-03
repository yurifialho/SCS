class LinguagensController < ApplicationController
  # GET /linguagens
  # GET /linguagens.json
  def index
    @linguagens = Linguagem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @linguagens }
    end
  end

  # GET /linguagens/1
  # GET /linguagens/1.json
  def show
    @linguagem = Linguagem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @linguagem }
    end
  end

  # GET /linguagens/new
  # GET /linguagens/new.json
  def new
    @linguagem = Linguagem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @linguagem }
    end
  end

  # GET /linguagens/1/edit
  def edit
    @linguagem = Linguagem.find(params[:id])
  end

  # POST /linguagens
  # POST /linguagens.json
  def create
    @linguagem = Linguagem.new(params[:linguagem])

    respond_to do |format|
      if @linguagem.save
        format.html { redirect_to @linguagem, notice: 'Linguagem criada com sucesso.' }
        format.json { render json: @linguagem, status: :created, location: @linguagem }
      else
        format.html { render action: "new" }
        format.json { render json: @linguagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /linguagens/1
  # PUT /linguagens/1.json
  def update
    @linguagem = Linguagem.find(params[:id])

    respond_to do |format|
      if @linguagem.update_attributes(params[:linguagem])
        format.html { redirect_to @linguagem, notice: 'Linguagem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @linguagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linguagens/1
  # DELETE /linguagens/1.json
  def destroy
    @linguagem = Linguagem.find(params[:id])
    @linguagem.destroy

    respond_to do |format|
      format.html { redirect_to linguagens_url }
      format.json { head :no_content }
    end
  end
end
