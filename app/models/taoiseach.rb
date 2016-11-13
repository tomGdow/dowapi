class Taoiseach < ApplicationRecord
	scope :fiannafail, -> {where("party = ?","Fianna Fail")}
	scope :finegael, -> {where("party != ?","Fianna Fail")}
end
