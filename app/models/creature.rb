class Creature < ActiveRecord::Base
	belongs_to :user

	validates :name, uniqueness: true

	CREATURETYPES = ["fire", "water", "grass"]
end
