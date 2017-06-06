class Casting < ActiveRecord::Base
	belongs_to :booker
	belongs_to :proyect
	has_many :models
end

