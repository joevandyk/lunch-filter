class AccountController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  # If you want "remember me" functionality, add this before_filter to Application Controller
  before_filter :login_from_cookie
 
  # say something nice, you goof!  something sweet.
  def index
    unless logged_in? || User.count > 0
        redirect_to(:action => 'signup')
    else
        redirect_to(:action=> 'login')
    end
     
  end

  def login
    return unless request.post?
    self.current_user = User.authenticate(params[:login], params[:password])
    if logged_in?
      if params[:remember_me] == "1"
        self.current_user.remember_me
        cookies[:auth_token] = { :value => self.current_user.remember_token , :expires => self.current_user.remember_token_expires_at }
      end
      redirect_back_or_default(:controller => '/moderator', :action => 'index')
      flash[:successful] = "Logged in successfully"
    else
       flash[:notice] = "Username/password combination did not fly..." 
    end
  end

  def signup
    login_required
    @user = User.new(params[:user])
    return unless request.post?
    @user.save!
    self.current_user = @user
    redirect_back_or_default(:controller => 'restaurant', :action => 'index')
    flash[:notice] = "Thanks for signing up!"
    rescue ActiveRecord::RecordInvalid
    render :action => 'signup'
  end
  
  def logout
    self.current_user.forget_me if logged_in?
    cookies.delete :auth_token
    reset_session
    flash[:successful] = "You have been logged out."
    redirect_back_or_default(:controller => 'restaurant', :action => 'index')
  end
end
