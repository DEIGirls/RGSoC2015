class EntriesController < ApplicationController
	def index
		@new_entry = Entry.new
		@all_entries = Entry.order(created_at: :desc).all
	end
	  
	def create 
	    	@new_entry = Entry.new(entry_params) 
	    	if @new_entry.save 
	    		redirect_to '/index' 
		end
	end

	def update
	    	
	end

	def delete
	
	end
	    

	private
	def entry_params
	  params.require(:entry).permit(:title)
	  params.require(:entry).permit(:description)
	  params.require(:entry).permit(:author)
	end
end
