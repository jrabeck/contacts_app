class ContactsController < ApplicationController

	def home
	@contacts = Contact.all
	end

	def africa
	end

	def new
	end

	def create
				@contact = Contact.new(first_name: params[:first_name], last_name: params[:last_name], phone_number: params[:phone_number], email: params[:email]) 
	@contact.save

	redirect_to "/contacts/#{contact.id}"
	end

	def index
		@contacts = Contact.all 
	end

	def edit

	end

	def update
					@contact = Contact.new(first_name: params[:first_name], last_name: params[:last_name], phone_number: params[:phone_number], email: params[:email]) 
	@contact.save

	redirect_to "/contacts/#{@contact.id}"
	end

	def show
		@contact = Contact.find_by(id: params[:id])
	end

	def destroy
		@contact = Contact.find_by(id: params[:id])
		@contact.destroy

		redirect_to "/index"
	end


end
