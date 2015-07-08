class AdminController < ApplicationController

	def index
		@new_entry = Entry.new
		@all_entries = Entry.all
	end

end
