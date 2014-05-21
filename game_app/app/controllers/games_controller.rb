class GamesController < ApplicationController

  def index
    @games = [Game.get_game]
  end

  def all
    @games = Game.all
  end

  def new
    @game = Game.new
    @game.get_images
  end

  def create
    game = Game.create(game_params)
    current_user.games << game
    
    redirect_to user_path(current_user)
  end

  private

  def game_params
    params.require(:game).permit(:image_one_url,:image_two_url,:image_three_url,:name)
  end

end