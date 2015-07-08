class AdminController < ApplicationController

	def admin
		@new_entry = Entry.new
		@all_entries = Entry.all
	end

end
