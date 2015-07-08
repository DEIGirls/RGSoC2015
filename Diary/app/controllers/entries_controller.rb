class EntriesController < ApplicationController
	def index
		@new_entry = Entry.new
		@all_entries = Entry.order(created_at: :desc).all
	end

	def add_entry
		@new_entry = Entry.new
	end

	def edit_entry
		@entry = Entry.find(params[:id])
	end
	
	def create 
		@new_entry = Entry.new(entry_params) 
    	@new_entry.save 
		redirect_to '/admin'
	end

	def delete
		@entry = Entry.find(params[:id])
		@entry.delete
		redirect_to '/admin'
	end
	
	def update
		puts "oi"
		@entry = Entry.find(params[:id])
		@entry.update(entry_params)
		redirect_to '/admin'
	end
	
	private
	def entry_params
	  params.require(:entry).permit(:title, :description, :author)
	end
end
