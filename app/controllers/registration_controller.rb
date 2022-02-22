class RegistrationController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          @profile = @user.create_profile(name:@user.name,user_id:@user.id,created_at: Time.now,updated_at: Time.now)
          redirect_to(root_path)

        else
          render('new')
        end
    end

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end



  

  