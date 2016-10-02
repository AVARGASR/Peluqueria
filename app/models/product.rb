class Product < ActiveRecord::Base
  belongs_to :category

  validates :name, :presence => {:message => "Campo nombre no debe estar en blanco"}, length: {in:3..40, too_short: "Demasiado corto", too_long: "Demasiado largo"}, uniqueness: {case_sensitive: false, message: "Ya esta registrado"}
  validates :descripcion, length: {maximum: 200, too_long: "Descripcion muy extensa"}
  validates :stock, :numericality => {:message => "debe ser un valor numérico"}
  validates_numericality_of :stock, :greater_than => 0, :message => "No puede ser negativo o cero"
  validates :precio, :numericality => { :greater_than_or_equal_to => 0, message: 'Formato de precio incorrecto, favor reintentar.' }
  #Creando y dando formato con paperclip
 has_attached_file :cover, styles: {medium:"600x600", thumb:"300x300", mini:"200x200"}
 validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
