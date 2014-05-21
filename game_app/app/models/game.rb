class Game < ActiveRecord::Base
  belongs_to :user

  def get_images
    images = HTTParty.get("https://api.instagram.com/v1/media/popular?client_id=b913c848cfb444a39f186ca7b9d64210")
    self.image_one_url   = images["data"][0]["images"]["thumbnail"]["url"]
    self.image_two_url   = images["data"][1]["images"]["thumbnail"]["url"]
    self.image_three_url = images["data"][2]["images"]["thumbnail"]["url"]
  end

end