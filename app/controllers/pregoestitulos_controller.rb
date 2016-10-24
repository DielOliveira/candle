class PregoestitulosController < ApplicationController
  before_action :set_pregoestitulo, only: [:show, :edit, :update, :destroy]

  # GET /pregoestitulos
  # GET /pregoestitulos.json
  def index
    @pregoestitulos = Pregoestitulo.all
  end

  # GET /pregoestitulos/1
  # GET /pregoestitulos/1.json
  def show
  end

  # GET /pregoestitulos/new
  def new
    @pregoestitulo = Pregoestitulo.new
  end

  # GET /pregoestitulos/1/edit
  def edit
  end

  # POST /pregoestitulos
  # POST /pregoestitulos.json
  def create
    @pregoestitulo = Pregoestitulo.new(pregoestitulo_params)

    respond_to do |format|
      if @pregoestitulo.save
        format.html { redirect_to @pregoestitulo, notice: 'Pregoestitulo was successfully created.' }
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
    respond_to do |format|
      if @pregoestitulo.update(pregoestitulo_params)
        format.html { redirect_to @pregoestitulo, notice: 'Pregoestitulo was successfully updated.' }
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
      format.html { redirect_to pregoestitulos_url, notice: 'Pregoestitulo was successfully destroyed.' }
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
      params.require(:pregoestitulo).permit(:pregao_id, :titulo_id, :flagativo)
    end
end
