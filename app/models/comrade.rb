class Comrade < ActiveRecord::Base

  has_many :items 

  def from_transactions
    Transaction.where(requestee: self)
  end

  def to_transactions
    Transaction.where(requestor: self)
  end 

end
