class DebtorsController < ApplicationController
  def index
    @debtors = Debtor.fila session[:id]
  end

  def show
    @debtor = Debtor.find params[:id]
  end

  def update
    @debtor = Debtor.find params[:id]
    @debtor.attributes = params[:debtor]
  
    Debt.from_debtor(@debtor).each do |d|
      d.status_id = 300
      d.save
    end

    @log = LogDebtor.new
    @log.debtor_id = @debtor.id
    @log.status_id = @debtor.status_id
    @log.user_id = session[:id]
    @log.description = params[:obs]
    @log.date_callback = params[:data] unless params[:data].empty?

    if @debtor.save && @log.save
      flash[:notice] = "Status alterado com sucesso!"    
    else
      flash[:notice] = "Oops! Temos um probleminha.."
    end

    #redirect_to debtor_path(@debtor)
    render :action => "show"
  end
end
