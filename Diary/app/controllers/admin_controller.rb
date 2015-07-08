class AdminController < ApplicationController

	def admin
		@all_entries = Entry.all
	end

end
