class Transfer
  # your code here
  attr_reader :sender, :receiver, :amount
  attr_accessor :status

  def initialize (sender, receiver, amount)
    @sender  = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    self.sender.valid? && self.receiver.valid?
  end

  def execute_transaction
    # binding.pry
    # if self.valid? && self.status == "pending" && self.sender.balance - self.amount >= 0
    #   self.sender.deposit(-1 * amount)
    #   self.receiver.deposit(amount)
    #   self.status = "complete"
    # elsif (self.sender.balance - amount < 0) || (!self.valid?) || self.status == "complete"
    #   self.status = "rejected"
    #   return "Transaction rejected. Please check your account balance."
    # end
  end

def reverse_transfer
  if self.status == "complete"
    self.receiver.balance -= amount 
    self.sender.balance += amount
    self.status = "reversed"
  end
end

end
