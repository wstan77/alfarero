class Api::V1::AdminsController < ApplicationController
	before_filter :get_admins, only: [:index]
	before_filter :find_admin, only: [:show, :edit, :update, :destroy] 

	def index
		render json: @admins
	end

	def show
		render json: @admin
	end


	private

	def get_admins
		@admins = Admin.select(:id, :names, :lastnames, :email, :is_deleted).active
	end

	def find_admin
		@admin = Admin.find(params[:id]) rescue nil
	end
end
