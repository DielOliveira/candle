class PregaosController < ApplicationController
  before_action :set_pregao, only: [:show, :edit, :update, :destroy]

  # GET /pregaos
  # GET /pregaos.json
  def index
    @pregaos = Pregao.all
  end

  # GET /pregaos/1
  # GET /pregaos/1.json
  def show
  end

  # GET /pregaos/new
  def new
    @pregao = Pregao.new
  end

  # GET /pregaos/1/edit
  def edit
  end

  # POST /pregaos
  # POST /pregaos.json
  def create
    @pregao = Pregao.new(pregao_params)

    respond_to do |format|
      if @pregao.save
        format.html { redirect_to @pregao, notice: 'Pregão incluído com sucesso.' }
        format.json { render :show, status: :created, location: @pregao }
      else
        format.html { render :new }
        format.json { render json: @pregao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pregaos/1
  # PATCH/PUT /pregaos/1.json
  def update
    respond_to do |format|
      if @pregao.update(pregao_params)
        format.html { redirect_to @pregao, notice: 'Pregão alterado com sucesso.' }
        format.json { render :show, status: :ok, location: @pregao }
      else
        format.html { render :edit }
        format.json { render json: @pregao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pregaos/1
  # DELETE /pregaos/1.json
  def destroy
    @pregao.destroy
    respond_to do |format|
      format.html { redirect_to pregaos_url, notice: 'Pregão excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pregao
      @pregao = Pregao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pregao_params
      params.require(:pregao).permit(:data, :flagativo)
    end
end
