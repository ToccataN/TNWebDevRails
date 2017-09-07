class UserController < ApplicationController
  def new
    @user = User.new(user_param)
    @user.save
  end

  private

  def user_param
    params.require(:user).permit(:name, :email,
      :password)
  end

end
