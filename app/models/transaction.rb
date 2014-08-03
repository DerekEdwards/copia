class Transaction < ActiveRecord::Base

  belongs_to :requestor, :class_name => 'Comrade'
  belongs_to :requestee, :class_name => 'Comrade'
  belongs_to :item

  has_many :comments 

  REQUESTED = 0
  CURRENT = 1
  COMPLETE = 2
  DENIED = 3

  def get_status
    case self.status
      when REQUESTED
        return "Requested"
      when CURRENT
       return "Loaned"
      when COMPLETE
       return "Completed"
      when DENIED
       return "Denied"
     end
  end

end
