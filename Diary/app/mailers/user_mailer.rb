class UserMailer < ApplicationMailer
	default from: 'talkingtojuan@gmail.com'
	
	def welcome_email(title, author, text)
		@title = title
		@author = author
		@text = text
		mail(to: 'inesopcoelho@gmail.com', subject: 'New post on your diary!')
	end
end
