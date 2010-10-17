class DemoController < ApplicationController

  def new
    if user_signed_in?
      flash[:notice] = "You need to be logged out for this"
      redirect_to root_path
    else
      pass = SecureRandom.hex(8)
      user = User.create!(:name => "Demo User", :email => SecureRandom.hex(8) + "@demoaccount.com", :password => pass, :password_confirmation => pass)
      user.create_demo_data
      sign_in(:user, user)
      redirect_to root_path
    end
  end

end
