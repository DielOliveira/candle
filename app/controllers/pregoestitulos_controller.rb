class PregoestitulosController < ApplicationController
  before_action :set_pregoestitulo, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token, :only => :create

  # GET /pregoestitulos
  # GET /pregoestitulos.json
  def index
    @pregoestitulos = Pregoestitulo.all
  end

  # GET /pregoestitulos/new
  def new
    @pregoestitulo = Pregoestitulo.new
  end

  def show
    @pregoestitulosgraficos = Pregoestitulosgrafico.where(:pregoestitulo_id => @pregoestitulo.id)
    @pregoestitulosgrafico = Pregoestitulosgrafico.new
  end

  # GET /pregoestitulos/1/edit
  def edit
  end

  # POST /pregoestitulos
  # POST /pregoestitulos.json
  def create
    @pregoestitulo = Pregoestitulo.new(pregoestitulo_params)

    pregao = Pregao.where('data = ?', @pregoestitulo.date).first

    if pregao.blank?
      pregao = Pregao.new
      pregao.data = @pregoestitulo.date
      pregao.flagativo = true
      pregao.save
    end

    @pregoestitulo.pregao_id = pregao.id

    respond_to do |format|
      if @pregoestitulo.save
        format.html { redirect_to @pregoestitulo, notice: 'Título incluído com sucesso.' }
        format.json { render :show, status: :created, location: @pregoestitulo }
      else
        format.html { render :new }
        format.json { render json: @pregoestitulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pregoestitulos/1
  # PATCH/PUT /pregoestitulos/1.json
  def update

    #byebug

    pregao = Pregao.where('data = ?', pregoestitulo_params["date"]).first

    #byebug

    if pregao.blank?
      pregao = Pregao.new
      pregao.data = pregoestitulo_params["date"]
      pregao.flagativo = true
      pregao.save
    end
    
    @pregoestitulo.pregao_id = pregao.id  

    respond_to do |format|
      if @pregoestitulo.update(pregoestitulo_params)
        format.html { redirect_to pregoestitulos_path, notice: 'Título alterado com sucesso.' }
        format.json { render :show, status: :ok, location: @pregoestitulo }
      else
        format.html { render :edit }
        format.json { render json: @pregoestitulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pregoestitulos/1
  # DELETE /pregoestitulos/1.json
  def destroy
    @pregoestitulo.destroy
    respond_to do |format|
      format.html { redirect_to pregoestitulos_url, notice: 'Título excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pregoestitulo
      @pregoestitulo = Pregoestitulo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pregoestitulo_params
      params.require(:pregoestitulo).permit(:pregao_id, :titulo_id, :flagativo, :date)
    end
end
