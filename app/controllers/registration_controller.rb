class RegistrationController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
        #   log_in(params[:user])
        #   puts @user
          @profile = @user.create_profile(name:@user.name,user_id:@user.id,created_at: Time.now,updated_at: Time.now)
        #    puts "#@profile"
          redirect_to(root_path)

          #   redirect_to root_path, notice: 'Successfully created account'
        else
          render('new')
        end
    end

    # def create 
    #     puts params[:session]
    # end

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end



  

  