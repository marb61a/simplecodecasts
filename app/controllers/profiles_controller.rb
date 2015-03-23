class ProfilesController < ApplicationController
  def new
    @user = User.find( params[:user_id])
    @profile = Profile.new
  end
  def create 
    @user = User.find( params[:user_id] )
    @profile = @user.build_profile(profile_params)
    if @profile.save
      flash[:success] = "Profile Updated!"
      redirect_to user_path( params[:user_id] )
    else
      render action: :new
    end
 end
  
  def edit
    @user = User.find( params[:user_id] )
    @profile = @user.profile
  end
end