class Shop < ActiveRecord::Base
	has_many :reviews
	has_many :favorite_shops
	has_many :shop_checkins
	has_many :photos

	acts_as_gmappable
	def gmaps4rails_address
		self.address 
	end

end
