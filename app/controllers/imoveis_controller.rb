class ImoveisController < ApplicationController
  before_action :set_imovel, only: [:show, :edit, :update, :destroy]
  before_action :dados
  load_and_authorize_resource :class=>"Imovel"

  # GET /imoveis
  # GET /imoveis.json
  def index
    @imoveis = Imovel.accessible_by(current_ability).all
  end

  # GET /imoveis/1
  # GET /imoveis/1.json
  def show
  end

  # GET /imoveis/new
  def new
    @imovel = Imovel.new
  end

  # GET /imoveis/1/edit
  def edit
  end

  # POST /imoveis
  # POST /imoveis.json
  def create
    @imovel = Imovel.new(imovel_params)

    respond_to do |format|
      if @imovel.save
        format.html { redirect_to @imovel, notice: 'Imovel was successfully created.' }
        format.json { render :show, status: :created, location: @imovel }
      else
        format.html { render :new }
        format.json { render json: @imovel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imoveis/1
  # PATCH/PUT /imoveis/1.json
  def update
    respond_to do |format|
      if @imovel.update(imovel_params)
        format.html { redirect_to @imovel, notice: 'Imovel was successfully updated.' }
        format.json { render :show, status: :ok, location: @imovel }
      else
        format.html { render :edit }
        format.json { render json: @imovel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imoveis/1
  # DELETE /imoveis/1.json
  def destroy
    @imovel.destroy
    respond_to do |format|
      format.html { redirect_to imoveis_url, notice: 'Imovel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def dados
      @tipos = ["PLACA","MURO","CAVALETE","COMITÊ"]
      @simnao = [['NAO',false], ['SIM',true]]
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_imovel
      @imovel = Imovel.accessible_by(current_ability).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imovel_params
      params.require(:imovel).permit(:tipo, :logradouro, :user_id, :numero, :bairro_id, :proprietario, :entidade_id, :emplacado)
    end
end
