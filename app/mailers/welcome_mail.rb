class WelcomeMail < ApplicationMailer
     default :from =>"kulkarni.trupti.v.19@gmail.com"
    
    def welcome_email(user) 
     
        @user = user
       # @url  = "http://example.com/login"
       puts @user.inspect
        mail(:to => @user, :subject => "Welcome to My Awesome Site")
    end 
    def welcome_doctor(user,password) 
     
        @user = user
        @password= password
       # @url  = "http://example.com/login"
       puts @user.inspect
        puts @password.inspect
        mail(:to => @user, :subject => "@password")
    end 
end
