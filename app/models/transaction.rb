class Transaction < ApplicationRecord
  belongs_to :account
  validates :amount, presence: true
  validates_inclusion_of :kind, in: %w[deposit withdraw] # transaction must be one of two kinds

  def update_balance(transaction)
    if transaction.kind == 'deposit'
      self.balance = self.balance + transaction.amount
      self.save
    elsif transaction.kind == 'withdraw'
      if self.balance >= transaction.amount 
        self.balance = self.balance - transaction.amount
        self.save
      else
        return 'Balance too low...'
      end
    end
  end
end
 