class PokemonController < ApplicationController
  before_action :set_pokemon, only: [:show]

  # GET /pokemons
  # GET /pokemons.json
  def index
	  @pokemons = Pokemon.gen6

  end

  # GET /pokemons/1
  # GET /pokemons/1.json
  def show
    # @pokemon = Pokemon.find(params[:id])
    # respond_to do |format|
    #   format.json {render json: @pokemon, status: 200}
    #   format.js
    # end
    # # render json: @pokemon
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon
      @pokemon = Pokemon.friendly.find(params[:id].titleize)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokemon_params
      params.require(:pokemon).permit(:number, :name, :type1, :type2, :entry, :hp, :atk, :def, :spatk, :spdef, :spe)
    end
end
