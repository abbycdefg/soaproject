class Creature < ActiveRecord::Base
	belongs_to :user
	has_many :locations
	#accepts_nested_attributes_for :creature_locations

	validates :name, uniqueness: true

	CREATURETYPES = ["fire", "water", "grass"]

end
