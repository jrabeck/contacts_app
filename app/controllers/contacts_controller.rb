class ContactsController < ApplicationController

	def home
	@contacts = Contact.all
	end

	def new_contact


	end

	def africa
	end

	def saved_contact
			@contact = Contact.new(first_name: params[:first_name], last_name: params[:last_name], phone_number: params[:phone_number], email: params[:email]) 
	@contact.save
	end

end
