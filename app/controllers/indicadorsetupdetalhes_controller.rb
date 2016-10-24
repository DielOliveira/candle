class IndicadorsetupdetalhesController < ApplicationController
  before_action :set_indicadorsetupdetalhe, only: [:show, :edit, :update, :destroy]

  # GET /indicadorsetupdetalhes
  # GET /indicadorsetupdetalhes.json
  def index
    @indicadorsetupdetalhes = Indicadorsetupdetalhe.all
  end

  # GET /indicadorsetupdetalhes/1
  # GET /indicadorsetupdetalhes/1.json
  def show
  end

  # GET /indicadorsetupdetalhes/new
  def new
    @indicadorsetupdetalhe = Indicadorsetupdetalhe.new
  end

  # GET /indicadorsetupdetalhes/1/edit
  def edit
  end

  # POST /indicadorsetupdetalhes
  # POST /indicadorsetupdetalhes.json
  def create
    @indicadorsetupdetalhe = Indicadorsetupdetalhe.new(indicadorsetupdetalhe_params)

    respond_to do |format|
      if @indicadorsetupdetalhe.save
        format.html { redirect_to @indicadorsetupdetalhe, notice: 'Indicadorsetupdetalhe was successfully created.' }
        format.json { render :show, status: :created, location: @indicadorsetupdetalhe }
      else
        format.html { render :new }
        format.json { render json: @indicadorsetupdetalhe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indicadorsetupdetalhes/1
  # PATCH/PUT /indicadorsetupdetalhes/1.json
  def update
    respond_to do |format|
      if @indicadorsetupdetalhe.update(indicadorsetupdetalhe_params)
        format.html { redirect_to @indicadorsetupdetalhe, notice: 'Indicadorsetupdetalhe was successfully updated.' }
        format.json { render :show, status: :ok, location: @indicadorsetupdetalhe }
      else
        format.html { render :edit }
        format.json { render json: @indicadorsetupdetalhe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indicadorsetupdetalhes/1
  # DELETE /indicadorsetupdetalhes/1.json
  def destroy
    @indicadorsetupdetalhe.destroy
    respond_to do |format|
      format.html { redirect_to indicadorsetupdetalhes_url, notice: 'Indicadorsetupdetalhe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indicadorsetupdetalhe
      @indicadorsetupdetalhe = Indicadorsetupdetalhe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indicadorsetupdetalhe_params
      params.require(:indicadorsetupdetalhe).permit(:indicador_id, :descricao, :valordefault)
    end
end
