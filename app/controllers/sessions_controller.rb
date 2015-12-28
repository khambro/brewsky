class SessionsController < ApplicationController

  def sign_out
    session.delete(:user_id)
    session.delete(:id)
    redirect_to "/"
  end

  def sign_in
    @user = User.find_by(email: params[:email])
      # REVIEW: The `@user.authenticate` should be on the same line as `if`
                # if @user && @user.authenticate(params[:password])
                # And there is an extra level of indentation
      if @user
        @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to "/", notice: "You have been signed in"
      else
        redirect_to "/", notice: "Wrong username/password. Try again."
      end
  end


end
