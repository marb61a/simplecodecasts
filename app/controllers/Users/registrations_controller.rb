class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|
      if params[:plan]
        resource.plan.id = params[:plan]
        if resource.plan.id == 2
          resource.save_with_payment
        else
          resource.save
        end
      end
    end
  end
 end