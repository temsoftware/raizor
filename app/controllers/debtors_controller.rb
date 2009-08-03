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
  
    @debts = Debt.find_by_sql("select debts.* from debts inner join status on status_id = status.id inner join type_status on type_status.id = status.type_status_id where debts.debtor_id = #{@debtor.id} and type_status.id not in (2,6)")
    
    @debts.each do |d|
      d.status_id = 300
      d.save
    end

  @log = LogDebtor.new
  @log.debtor_id = @debtor.id
  @log.status_id = @debtor.status_id
  @log.user_id = session[:id]
  @log.description = params[:obs]

    if @debtor.save && @log.save
      flash[:notice] = "Status alterado com sucesso!"    
    else
      flash[:notice] = "Oops! Temos um probleminha.."
    end

    redirect_to debtor_path(@debtor)
  end
end
