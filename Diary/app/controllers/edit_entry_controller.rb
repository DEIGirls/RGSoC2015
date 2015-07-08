class EditEntryController < ApplicationController
	def edit_entry
		@entry = Entry.find(params[:id])
	end
end
