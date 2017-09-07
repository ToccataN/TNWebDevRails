class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
     login(user)
     redirect_to news_path
    else
     flash[:danger] = 'Invalid email/password combination' # Not quite right!
     redirect_to root_path
    end
  end

  def logout
   log_out
   redirect_to root_path
  end
end
