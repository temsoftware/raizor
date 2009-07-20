class DebtorsController < ApplicationController
  def index
    @debtors = Debtor.find :all, :conditions => ["user_id = ?", session[:id]]
  end

  def show
    @debtor = Debtor.find params[:id]
  end
end
