class Detail < ActiveRecord::Base
	belongs_to :month
	validates :monto, :numericality => { :greater_than_or_equal_to => 0, :less_than => 5000000, message: 'Formato de precio incorrecto, favor reintentar.' }
	validates :descripcion, length: {maximum: 200, too_long: "Descripcion muy extensa"}
	validates :ingreso, :numericality => { :greater_than_or_equal_to => 0, :less_than => 5000000, message: 'Formato de precio incorrecto, favor reintentar.' }
 
end
