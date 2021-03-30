## Account

- has_many :transactions

### attributes

- :balance - float, :name - string

## Transaction

- belongs_to :account

### attributes

- account_id - integer, :amount - float, :kind - string, :date - datetime, :description - string
