class UsuariopregaosController < ApplicationController
  before_action :set_usuariopregao, only: [:show, :edit, :update, :destroy]

  # GET /usuariopregaos
  # GET /usuariopregaos.json
  def index
    @usuariopregaos = Usuariopregao.all
  end

  # GET /usuariopregaos/1
  # GET /usuariopregaos/1.json
  def show
  end

  # GET /usuariopregaos/new
  def new
    @usuariopregao = Usuariopregao.new
  end

  # GET /usuariopregaos/1/edit
  def edit
  end

  # POST /usuariopregaos
  # POST /usuariopregaos.json
  def create
    @usuariopregao = Usuariopregao.new(usuariopregao_params)

    respond_to do |format|
      if @usuariopregao.save
        format.html { redirect_to @usuariopregao, notice: 'Usuariopregao was successfully created.' }
        format.json { render :show, status: :created, location: @usuariopregao }
      else
        format.html { render :new }
        format.json { render json: @usuariopregao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuariopregaos/1
  # PATCH/PUT /usuariopregaos/1.json
  def update
    respond_to do |format|
      if @usuariopregao.update(usuariopregao_params)
        format.html { redirect_to @usuariopregao, notice: 'Usuariopregao was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuariopregao }
      else
        format.html { render :edit }
        format.json { render json: @usuariopregao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuariopregaos/1
  # DELETE /usuariopregaos/1.json
  def destroy
    @usuariopregao.destroy
    respond_to do |format|
      format.html { redirect_to usuariopregaos_url, notice: 'Usuariopregao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuariopregao
      @usuariopregao = Usuariopregao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuariopregao_params
      params.require(:usuariopregao).permit(:usuario, :pregoestitulo_id, :indicadorsetup_id, :checkpoint, :resultado, :flagfinalizado)
    end
end
