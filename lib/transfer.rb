class Transfer
  attr_accessor :sender, :reciver, :amount, :status
  
  def initialize(sender, reciver, amount)
    @sender = sender 
    @reciver = reciver 
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    @sender.valid? && @reciver.valid? ? true : false 
  end
  
  def execute_transfer
    if @sender.balance > @amount && @status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end
end
