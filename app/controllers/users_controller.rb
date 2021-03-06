class UsersController < ApplicationController
	
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:success] = "Hey " + @user.name + ". Welcome to Thinkit - hope you enjoy"
			redirect_to @user
		else
			render 'new'
		end
	end

	def update
	end

	def destroy
	end
end
