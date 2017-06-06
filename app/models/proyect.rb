class Proyect < ActiveRecord::Base
	belongs_to :director
	has_one :casting 


end
