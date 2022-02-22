class InfantriesController < ApplicationController
  before_action :set_infantry, only: [:show, :update, :destroy]
  before_action :authorized

  # GET /infantries
  def index
    render json: {status: 200, infantries: Infantry.all}
  end

  # GET /infantries/1
  def show
    render json: Infantry.find(params[:id])
  end

  # POST /infantries
  def create
    @infantry = Infantry.new(infantry_params)
    # @infantry.player = @player

    if @infantry.save
      render json: @infantry, status: :created, location: @infantry
      # render status: 201, json: {infantry: infantry}
    else
      render json: @infantry.errors, status: :unprocessable_entity
      # render status: 422, json: {infantry: infantry} 
    end
  end

  # PATCH/PUT /infantries/1
  def update
    infantry = Infantry.find(params[:id])
    infantry.update(infantry_params)
    render(json: { infantry: infantry })
  end

  # DELETE /infantries/1
  def destroy
    @infantry.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_infantry
      @infantry = Infantry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def infantry_params
      params.require(:infantry).permit(:inf_attack, :inf_defense, :inf_health, :inf_attack_vs_player, :inf_defense_vs_player, :inf_health_vs_player, :inf_attack_vs_players_inf, :inf_attack_vs_players_range, :inf_attack_vs_players_cav, :inf_defense_vs_players_cav, :inf_defense_vs_players_inf, :inf_defense_vs_players_range, :inf_defense_vs_players_siege)
    end
end
