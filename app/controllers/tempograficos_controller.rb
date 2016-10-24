class TempograficosController < ApplicationController
  before_action :set_tempografico, only: [:show, :edit, :update, :destroy]

  # GET /tempograficos
  # GET /tempograficos.json
  def index
    @tempograficos = Tempografico.all
  end

  # GET /tempograficos/1
  # GET /tempograficos/1.json
  def show
  end

  # GET /tempograficos/new
  def new
    @tempografico = Tempografico.new
  end

  # GET /tempograficos/1/edit
  def edit
  end

  # POST /tempograficos
  # POST /tempograficos.json
  def create
    @tempografico = Tempografico.new(tempografico_params)

    respond_to do |format|
      if @tempografico.save
        format.html { redirect_to @tempografico, notice: 'Tempografico was successfully created.' }
        format.json { render :show, status: :created, location: @tempografico }
      else
        format.html { render :new }
        format.json { render json: @tempografico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tempograficos/1
  # PATCH/PUT /tempograficos/1.json
  def update
    respond_to do |format|
      if @tempografico.update(tempografico_params)
        format.html { redirect_to @tempografico, notice: 'Tempografico was successfully updated.' }
        format.json { render :show, status: :ok, location: @tempografico }
      else
        format.html { render :edit }
        format.json { render json: @tempografico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tempograficos/1
  # DELETE /tempograficos/1.json
  def destroy
    @tempografico.destroy
    respond_to do |format|
      format.html { redirect_to tempograficos_url, notice: 'Tempografico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tempografico
      @tempografico = Tempografico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tempografico_params
      params.require(:tempografico).permit(:tempo)
    end
end
