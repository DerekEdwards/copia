class TransactionsController < ApplicationController

  def show
    id = params[:id].to_i
    @transaction = Transaction.find(id)
  end

  def new
    @item = Item.find(params[:item].to_i)
    @transaction = Transaction.new 
  end 

  def create
    
    item = Item.find(params[:transaction][:item].to_i)
    requestor = Comrade.find(params[:transaction][:requestor].to_i)
    transaction = Transaction.create(requestor: requestor, item: item, requestee: item.comrade, status: Transaction::REQUESTED)   
    respond_to do |format|
      format.html { redirect_to transaction_path(transaction.id) }
    end
  end

end
