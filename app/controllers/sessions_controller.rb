class SessionsController < ApplicationController

  def sign_out
    session.delete(:id)
    redirect_to "/"
  end

  def sign_in
    @user = User.find_by(email: params[:email])
    if @user.authenticate(params[:password])
      session[:id] = @user.id
      redirect_to "/"
    else
      redirect_to "/"
    end


    #find user by username
    #authenticate that users password
      #if that's correct sign them in
      #else they need to try again
  end



end
