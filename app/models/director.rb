class Director < ActiveRecord::Base
	has_many :proyects, dependent: :destroy

end
