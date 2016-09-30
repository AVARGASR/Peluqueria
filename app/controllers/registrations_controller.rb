class RegistrationsController < Devise::RegistrationsController
	def new
		super
	end
	def create
		super		
	end
	def update
		super
	end

	#def sign_up_params
	#	allow = [:username, :email, :password, :password_confirmation]
	#	params.require(resource_name).permit(allow)
	#end

end