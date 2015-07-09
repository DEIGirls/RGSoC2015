ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "localhost:8000",  
  :user_name            => "talkingtojuan@gmail.com",  
  :password             => "Try this ruby.",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}  
