class AdminController < ApplicationController
	before_filter :authenticate
	
	def admin
		@all_entries = Entry.all
	end
	
	protected
	def authenticate
		authenticate_or_request_with_http_basic do |u,p|
			u == 'Rosa' && p == 'banana' || u == 'Ines' && p == 'morango'
		end
	end

end
