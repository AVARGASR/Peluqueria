class Reservation < ActiveRecord::Base
	validates :nombre, :presence => {:message => "no puede estar en blanco"}, length: {in:3..40, too_short: "demasiado corto", too_long: "demasiado largo"}
	validates :apellido, :presence => {:message => "no puede estar en blanco"}, length: {in:3..40, too_short: "demasiado corto", too_long: "demasiado largo"}
	validates :email, presence: { message: "No puede estar en blanco"}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, format: { :with => VALID_EMAIL_REGEX }
	validates :telefono, :presence => {:message => "no puede estar en blanco"}, length: {in:8..11, too_short: "demasiado corto", too_long: "demasiado largo"}
	validates_numericality_of :telefono, :greater_than => 0, :message => "no válido"
	#validates :direccion, :presence => {:message => "no puede estar en blanco"}, length: {in:3..40, too_short: "demasiado corta", too_long: "demasiado larga"}
	validates :descripcion, length: {maximum: 80, too_long: "demasiado larga"}	
	 
	
end
