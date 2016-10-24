class IndicadordetalheusuariosController < ApplicationController
  before_action :set_indicadordetalheusuario, only: [:show, :edit, :update, :destroy]

  # GET /indicadordetalheusuarios
  # GET /indicadordetalheusuarios.json
  def index
    @indicadordetalheusuarios = Indicadordetalheusuario.all
  end

  # GET /indicadordetalheusuarios/1
  # GET /indicadordetalheusuarios/1.json
  def show
  end

  # GET /indicadordetalheusuarios/new
  def new
    @indicadordetalheusuario = Indicadordetalheusuario.new
  end

  # GET /indicadordetalheusuarios/1/edit
  def edit
  end

  # POST /indicadordetalheusuarios
  # POST /indicadordetalheusuarios.json
  def create
    @indicadordetalheusuario = Indicadordetalheusuario.new(indicadordetalheusuario_params)

    respond_to do |format|
      if @indicadordetalheusuario.save
        format.html { redirect_to @indicadordetalheusuario, notice: 'Indicadordetalheusuario was successfully created.' }
        format.json { render :show, status: :created, location: @indicadordetalheusuario }
      else
        format.html { render :new }
        format.json { render json: @indicadordetalheusuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indicadordetalheusuarios/1
  # PATCH/PUT /indicadordetalheusuarios/1.json
  def update
    respond_to do |format|
      if @indicadordetalheusuario.update(indicadordetalheusuario_params)
        format.html { redirect_to @indicadordetalheusuario, notice: 'Indicadordetalheusuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @indicadordetalheusuario }
      else
        format.html { render :edit }
        format.json { render json: @indicadordetalheusuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indicadordetalheusuarios/1
  # DELETE /indicadordetalheusuarios/1.json
  def destroy
    @indicadordetalheusuario.destroy
    respond_to do |format|
      format.html { redirect_to indicadordetalheusuarios_url, notice: 'Indicadordetalheusuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indicadordetalheusuario
      @indicadordetalheusuario = Indicadordetalheusuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indicadordetalheusuario_params
      params.require(:indicadordetalheusuario).permit(:indicadorsetupdetalhe_id, :indicadorsetup_id, :valor)
    end
end
