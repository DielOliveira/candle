class UsuariosplanosController < ApplicationController
  before_action :set_usuariosplano, only: [:show, :edit, :update, :destroy]

  # GET /usuariosplanos
  # GET /usuariosplanos.json
  def index
    @usuariosplanos = Usuariosplano.all
  end

  # GET /usuariosplanos/1
  # GET /usuariosplanos/1.json
  def show
  end

  # GET /usuariosplanos/new
  def new
    @usuariosplano = Usuariosplano.new
  end

  # GET /usuariosplanos/1/edit
  def edit
  end

  # POST /usuariosplanos
  # POST /usuariosplanos.json
  def create
    @usuariosplano = Usuariosplano.new(usuariosplano_params)

    respond_to do |format|
      if @usuariosplano.save
        format.html { redirect_to @usuariosplano, notice: 'Usuariosplano was successfully created.' }
        format.json { render :show, status: :created, location: @usuariosplano }
      else
        format.html { render :new }
        format.json { render json: @usuariosplano.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuariosplanos/1
  # PATCH/PUT /usuariosplanos/1.json
  def update
    respond_to do |format|
      if @usuariosplano.update(usuariosplano_params)
        format.html { redirect_to @usuariosplano, notice: 'Usuariosplano was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuariosplano }
      else
        format.html { render :edit }
        format.json { render json: @usuariosplano.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuariosplanos/1
  # DELETE /usuariosplanos/1.json
  def destroy
    @usuariosplano.destroy
    respond_to do |format|
      format.html { redirect_to usuariosplanos_url, notice: 'Usuariosplano was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuariosplano
      @usuariosplano = Usuariosplano.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuariosplano_params
      params.require(:usuariosplano).permit(:plano_id, :usuario_id, :datapagamento, :linhacodigopagamento, :observacao, :valid_at)
    end
end
