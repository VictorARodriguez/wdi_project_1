class Game < ActiveRecord::Base
	belongs_to :user as => :creator

end
