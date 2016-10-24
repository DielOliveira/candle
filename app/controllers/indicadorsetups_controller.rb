class IndicadorsetupsController < ApplicationController
  before_action :set_indicadorsetup, only: [:show, :edit, :update, :destroy]

  # GET /indicadorsetups
  # GET /indicadorsetups.json
  def index
    @indicadorsetups = Indicadorsetup.all
  end

  # GET /indicadorsetups/1
  # GET /indicadorsetups/1.json
  def show
  end

  # GET /indicadorsetups/new
  def new
    @indicadorsetup = Indicadorsetup.new
  end

  # GET /indicadorsetups/1/edit
  def edit
  end

  # POST /indicadorsetups
  # POST /indicadorsetups.json
  def create
    @indicadorsetup = Indicadorsetup.new(indicadorsetup_params)

    respond_to do |format|
      if @indicadorsetup.save
        format.html { redirect_to @indicadorsetup, notice: 'Indicadorsetup was successfully created.' }
        format.json { render :show, status: :created, location: @indicadorsetup }
      else
        format.html { render :new }
        format.json { render json: @indicadorsetup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indicadorsetups/1
  # PATCH/PUT /indicadorsetups/1.json
  def update
    respond_to do |format|
      if @indicadorsetup.update(indicadorsetup_params)
        format.html { redirect_to @indicadorsetup, notice: 'Indicadorsetup was successfully updated.' }
        format.json { render :show, status: :ok, location: @indicadorsetup }
      else
        format.html { render :edit }
        format.json { render json: @indicadorsetup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indicadorsetups/1
  # DELETE /indicadorsetups/1.json
  def destroy
    @indicadorsetup.destroy
    respond_to do |format|
      format.html { redirect_to indicadorsetups_url, notice: 'Indicadorsetup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indicadorsetup
      @indicadorsetup = Indicadorsetup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indicadorsetup_params
      params.require(:indicadorsetup).permit(:indicador_id)
    end
end
