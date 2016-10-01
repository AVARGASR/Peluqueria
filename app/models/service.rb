class Service < ActiveRecord::Base
  belongs_to :reservation
  validates :tipo, :presence => {:message => "Campo nombre no debe estar en blanco"}, length: {in:3..40, too_short: "Demasiado corto", too_long: "Demasiado largo"}, uniqueness: {case_sensitive: false, message: "Ya esta registrado"}
  validates :precio, :numericality => { :greater_than_or_equal_to => 0, message: 'Formato de precio incorrecto, favor reintentar.' }

  has_attached_file :cover, styles: {medium:"1280x720", thumb:"300x300", mini:"400x200"}
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
