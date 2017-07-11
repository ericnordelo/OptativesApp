class User < ApplicationRecord
  rolify
  has_and_belongs_to_many :optatives
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def can_register? optative
  	
  	if self.program == "Ciencias de la Computación"
  		if optative.program == "matematica"
  			return [false, true]
  		else
			year = Year.where value: self.year, semester: ( Date.today.month >= 2 and Date.today.month <= 9 ? 2 : 1 ), program: "Computación"
			year = year.first
  				p year
  			if self.optatives.count < year.max_optatives
  				return [true]
  			end
  			return [false, false]
  		end
  	else
  		if optative.program == "computacion"
  			return [false, true]
  		else
			year = Year.where value: self.year, semester: ( Date.today.month >= 2 and Date.today.month <= 9 ? 2 : 1 ), program: "Matemática"
			year = year.first
  			if self.optatives.count < year.max_optatives
  				return [true]
  			end
  			return [false, false]
  		end
  	end
  end
end
