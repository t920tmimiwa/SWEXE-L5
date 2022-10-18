class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end
    
    def create 
        @user = User.new(uid: params[:user][:uid], pass: BCrypt::Password.create(params[:user][:pass]))
        if @user.save
            flash[:notice] = '登録しました'
            redirect_to users_path
        else
            render 'new'
        end
    end
    
    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to users_path
    end
end