class Optative < ApplicationRecord
	has_and_belongs_to_many :users
	validates :title, presence: {message: "debe rellenarse"}
	validates :description, presence: {message: "debe rellenarse"}
	validates :professor, presence: {message: "debe rellenarse"}
	validates :duration, presence: {message: "debe rellenarse"}, numericality: { only_integer: true, message: "debe tener un valor entero" }
	validates :schedule, presence: {message: "debe rellenarse"}
	validates :year, presence: {message: "debe rellenarse"}, numericality: { only_integer: true, message: "debe tener un valor entero" }
	validates :program, presence: {message: "debe rellenarse"}
	validates :enrollment, presence: {message: "debe rellenarse"}, numericality: { only_integer: true, message: "debe tener un valor entero" }
end
