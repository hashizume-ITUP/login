# encoding: UTF-8

class LogingateController < ApplicationController
  def signup
  end
  
  def dosignup #　ログインボタン押下
      name = params[:name]
      pass = params[:pass]
     
      if !(name.nil?) then
        currentUser = User.where(:name => name).first
        if currentUser.nil? then
          puts '* not found *'
          render :action => 'register'
       elsif pass!= currentUser.pass then
        puts '* password error *'
        render :text => 'パスワードが間違っています'
       else
        session[:currentUser] = currentUser
        render :action => 'welcome'
       end
   end 
end
end
