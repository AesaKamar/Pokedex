class PokemonsController < ApplicationController
  before_action :set_pokemon, only: [:show]

  # GET /pokemons
  # GET /pokemons.json
  def index
	  @gen1 = Pokemon.where(form: "None").where("number >=1 AND number<= 151")
	  @pokemons = @gen1
	  #@pokemons = Pokemon.where(form: "None").where("number <= 10")
  end

  # GET /pokemons/1
  # GET /pokemons/1.json
  def show
    @pokemon = Pokemon.find(params[:id])
    respond_to do |format|
      format.json
      format.js
    end
  end

  # GET /pokemons/new
  # def new
  #   @pokemon = Pokemon.new
  # end
  #
  # # GET /pokemons/1/edit
  # def edit
  # end
  #
  # # POST /pokemons
  # # POST /pokemons.json
  # def create
  #   @pokemon = Pokemon.new(pokemon_params)
  #
  #   respond_to do |format|
  #     if @pokemon.save
  #       format.html { redirect_to @pokemon, notice: 'Pokemon was successfully created.' }
  #       format.json { render :show, status: :created, location: @pokemon }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @pokemon.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # PATCH/PUT /pokemons/1
  # # PATCH/PUT /pokemons/1.json
  # def update
  #   respond_to do |format|
  #     if @pokemon.update(pokemon_params)
  #       format.html { redirect_to @pokemon, notice: 'Pokemon was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @pokemon }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @pokemon.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /pokemons/1
  # # DELETE /pokemons/1.json
  # def destroy
  #   @pokemon.destroy
  #   respond_to do |format|
  #     format.html { redirect_to pokemons_url, notice: 'Pokemon was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon
      @pokemon = Pokemon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokemon_params
      params.require(:pokemon).permit(:number, :name, :type1, :type2, :entry, :hp, :atk, :def, :spatk, :spdef, :spe)
    end
end
