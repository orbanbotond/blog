class UsersController < ApplicationController
	before_filter :authenticate_user!

	def index
		@user = User.all
	end

	def show 
		@user = User.find(params[:id])
	end

	def my_user
		@user = current_user
	end

end
