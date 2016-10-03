class Category < ActiveRecord::Base
	validates :descripcion, :presence => {:message => "Campo nombre no debe estar en blanco"}, length: {in:3..40, too_short: "Demasiado corto", too_long: "Demasiado largo"}, uniqueness: {case_sensitive: false, message: "Ya esta registrado"}
end
