class MovesController < ApplicationController
  before_action :set_move, only: [:show, :edit, :update, :destroy]

  # GET /moves
  # GET /moves.json
  def index
    @moves = Move.all
  end

  # GET /moves/1
  # GET /moves/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_move
      @move = Move.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def move_params
      params.require(:move).permit(:name, :type, :pp, :power, :accuracy, :category, :damage, :description)
    end
end
