class PregoestitulosgraficosController < ApplicationController
  before_action :set_pregoestitulosgrafico, only: [:show, :edit, :update, :destroy]

  # GET /pregoestitulosgraficos
  # GET /pregoestitulosgraficos.json
  def index
    @pregoestitulosgraficos = Pregoestitulosgrafico.all
  end

  # GET /pregoestitulosgraficos/1
  # GET /pregoestitulosgraficos/1.json
  def show
  end

  # GET /pregoestitulosgraficos/new
  def new
    @pregoestitulosgrafico = Pregoestitulosgrafico.new
  end

  # GET /pregoestitulosgraficos/1/edit
  def edit
  end

  # POST /pregoestitulosgraficos
  # POST /pregoestitulosgraficos.json
  def create
    @pregoestitulosgrafico = Pregoestitulosgrafico.new(pregoestitulosgrafico_params)

    respond_to do |format|
      if @pregoestitulosgrafico.save
        format.html { redirect_to @pregoestitulosgrafico, notice: 'Pregoestitulosgrafico was successfully created.' }
        format.json { render :show, status: :created, location: @pregoestitulosgrafico }
      else
        format.html { render :new }
        format.json { render json: @pregoestitulosgrafico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pregoestitulosgraficos/1
  # PATCH/PUT /pregoestitulosgraficos/1.json
  def update
    respond_to do |format|
      if @pregoestitulosgrafico.update(pregoestitulosgrafico_params)
        format.html { redirect_to @pregoestitulosgrafico, notice: 'Pregoestitulosgrafico was successfully updated.' }
        format.json { render :show, status: :ok, location: @pregoestitulosgrafico }
      else
        format.html { render :edit }
        format.json { render json: @pregoestitulosgrafico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pregoestitulosgraficos/1
  # DELETE /pregoestitulosgraficos/1.json
  def destroy
    @pregoestitulosgrafico.destroy
    respond_to do |format|
      format.html { redirect_to pregoestitulosgraficos_url, notice: 'Pregoestitulosgrafico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pregoestitulosgrafico
      @pregoestitulosgrafico = Pregoestitulosgrafico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pregoestitulosgrafico_params
      params.require(:pregoestitulosgrafico).permit(:pregoestitulo_id, :arquivo_id, :tempografico_id)
    end
end
