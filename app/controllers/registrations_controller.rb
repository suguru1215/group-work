class RegistrationsController < Devise::RegistrationsController
  attr_accessor :current_password
  protected
    def update_resource(resource, params)
      resource.update_without_password(params.except(:current_password))
    end
end