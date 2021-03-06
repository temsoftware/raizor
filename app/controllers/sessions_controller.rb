class SessionsController < ApplicationController

  skip_before_filter :authenticate

  def new
    render :layout => "login"
  end

  def create
    @user = User.find(:first ,
                       :conditions => ["login = ? and password = ?",
                                      params[:login][:username].capitalize!, params[:login][:password]])
    if @user
      if @user.active?
        flash[:notice] = nil
        session[:logged] = true
        session[:id] = @user.id
        session[:login] = @user.login
        redirect_to debtors_path
      else
        flash[:notice] = "Seu usuario encontrasse bloqueado. Entre em contato com o Administrador do sistema."
        render :action => "new", :layout => "login"
      end
    else
      flash[:notice] = "Usuario e/ou senha invalidos. Verifique e tente novamente."
      render :action => "new", :layout => "login"
    end
  end

  def destroy
    reset_session
    redirect_to new_session_path()
  end

end

