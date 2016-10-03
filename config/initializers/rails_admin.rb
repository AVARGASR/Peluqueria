RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
                         # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show

  end
  


 config.included_models = [ "User" ]
  
  config.model 'User' do
    list do
      exclude_fields :id, :current_sign_in_ip, :last_sign_in_ip
      exclude_fields_if do
        type == :datetime
      end
    end
    
    edit do
      exclude_fields :id, :sign_in_count ,:current_sign_in_ip, :last_sign_in_ip
      exclude_fields_if do
        type == :datetime
      end
    end
  end
  config.included_models = ["Product"]
  config.model 'Product' do
    edit do
      field :monto
    end
  end
  config.model 'User' do
    edit do
      field :email
      field :password
    end
  end

end
