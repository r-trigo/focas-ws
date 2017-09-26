class FocasController < ApplicationController
  before_action :set_foca, only: [:show, :edit, :update, :destroy]
  #before_action :restrict_access, except: [:index]
  before_action :authenticate_utilizador!, except: [:index, :show]

  # GET /focas
  # GET /focas.json
  def index
    @focas = Foca.search(params[:search])
  end

  # GET /focas/1
  # GET /focas/1.json
  def show
  end

  # GET /focas/new
  def new
    @foca = Foca.new
  end

  # GET /focas/1/edit
  def edit
  end

  # POST /focas
  # POST /focas.json
  def create
    @foca = Foca.new(foca_params)

    respond_to do |format|
      if @foca.save
        format.html { redirect_to @foca, notice: 'Foca criada com sucesso.' }
        format.json { render :show, status: :created, location: @foca }
      else
        format.html { render :new }
        format.json { render json: @foca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /focas/1
  # PATCH/PUT /focas/1.json
  def update
    respond_to do |format|
      if @foca.update(foca_params)
        format.html { redirect_to @foca, notice: 'Foca atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @foca }
      else
        format.html { render :edit }
        format.json { render json: @foca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /focas/1
  # DELETE /focas/1.json
  def destroy
    @foca.destroy
    respond_to do |format|
      format.html { redirect_to focas_url, notice: 'Foca eliminada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_foca
    @foca = Foca.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def foca_params
    params.require(:foca).permit(:nome, :altura_cm, :peso_kg, :data_nascimento)
  end

  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
    ApiKey.exists?(access_token: token)
    end
  end
end