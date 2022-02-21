class CavalriesController < ApplicationController
  # before_action :set_cavalry, only: [:show, :update, :destroy]

  # GET /cavalries
  def index
    render json: { status: 200, cavalries: Cavalry.all }
  end

  # GET /cavalries/1
  def show
    render json: Cavalry.find(params[:id])
  end

  # POST /cavalries
  def create
    cavalry = Cavalry.new(cavalry_params)

    if cavalry.save
      render status: 201, json: { cavalry: cavalry }
    else
      render status: 422, json: { cavalry: cavalry }
    end
  end

  # PATCH/PUT /cavalries/1
  def update
    cavalry = Cavalry.find(params[:id])
    cavalry.update(cavalry_params)
    render(json: { cavalry: cavalry })
  end

  # DELETE /cavalries/1
  def destroy
    cavalry = Cavalry.destroy(params[:id])
    render(status: 204)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_cavalry
    #   @cavalry = Cavalry.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def cavalry_params
      params.require(:cavalry).permit(:cav_attack, :cav_defense, :cav_health, :cav_attack_vs_player, :cav_defense_vs_player, :cav_health_vs_player, :cav_attack_vs_players_inf, :cav_attack_vs_players_ranged, :cav_attack_vs_players_cav, :cav_attack_vs_players_siege, :cav_defense_vs_players_cav, :cav_defense_vs_players_inf, :cav_defense_vs_players_ranged, :cav_defense_vs_players_siege)
    end
end
