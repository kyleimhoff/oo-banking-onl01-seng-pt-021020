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
  
  def 
end
