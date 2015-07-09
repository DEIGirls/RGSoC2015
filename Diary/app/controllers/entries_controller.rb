class EntriesController < ApplicationController
	before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]

private
	def entry_params
	  params.require(:entry).permit(:title, :description, :author)
	end

	def authenticate
		authenticate_or_request_with_http_basic do |u,p|
			u == 'Rosa' && p == 'banana' || u == 'Ines' && p == 'morango'
		end
	end

public
	def index
		@entries = Entry.order(created_at: :desc).all
	end

	def new
		@entry = Entry.new
	end

	def create
		@entry = Entry.new(entry_params)

		if @entry.save
			redirect_to entries_path
		else
			render :new
		end
	end



	def edit_entry
		@entry = Entry.find(params[:id])
	end

	def update
		@entry = Entry.find(params[:id])
		@entry.update(entry_params)
		redirect_to '/admin'
	end

	def destroy
		@entry = Entry.find(params[:id])
		@entry.delete
		redirect_to entries_path
	end


end
