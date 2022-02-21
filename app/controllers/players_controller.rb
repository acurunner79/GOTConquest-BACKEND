class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :update, :destroy]
  # before_action :authorized, only: [:show, :update, :destroy]
  before_action :authorized

  # GET /players
  def index
    @players = Player.where user: @user.id

    render json: @players.to_json(include: [:cavalries, :infantries, :rangeds ])
  end

  # GET /players/1
  def show
    render json: @player.to_json(include: [:cavalries, :infantries, :rangeds ])
  end

  # POST /players
  def create
    @player = Player.new(player_params)
    @player.user = @user

    if @player.save
      render json: @player, status: :created, location: @player
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /players/1
  def update
    if @player.update(player_params)
      render json: @player
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

    # PATCH/PUT /players/1
  # def update
  #   player = Player.find(params[:id])
  #   player.update(player_params)
  #   render(json: { player: player })
  # end

  # DELETE /players/1
  def destroy
    @player.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def player_params
      params.require(:player).permit(:ingame_name, :allegiance, :keep_level, :house_level, :power_level, :building_power, :research_power, :troop_power, :dragon_talent_power, :armory_power, :user_id)
    end
end
