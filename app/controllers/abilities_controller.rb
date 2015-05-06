class AbilitiesController < ApplicationController
  before_action :set_ability, only: [:show]

  # GET /abilities
  # GET /abilities.json
  def index
    @abilities = Ability.all
  end

  # GET /abilities/1
  # GET /abilities/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ability
      @ability = Ability.friendly.find(params[:id].titleize)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ability_params
      params.require(:ability).permit(:number, :name, :description, :shortdescription)
    end
end
