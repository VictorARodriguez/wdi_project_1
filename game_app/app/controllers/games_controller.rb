class GamesController < ActionController::Base

  layout "application"

def index
    @games = [Game.get_game]
 
end

def all
    @games = Game.all

end

end