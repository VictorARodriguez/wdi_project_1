class Game < ActiveRecord::Base
	belongs_to :user
 
 def self.get_game
    images = HTTParty.get("https://api.instagram.com/v1/media/popular?client_id=b913c848cfb444a39f186ca7b9d64210")
    myurl=images["data"][3]["images"]["thumbnail"]["url"]
    #self.save_game(game)
    #return game
end


  def self.save_game(game)
    new_image = Game.new
    new_game.save
  end

end

