account = Account.create(name: 'checking', balance: 1000)

transaction = Transaction.create(account_id: 1, amount: 10, kind: 'deposit', date:DateTime.now, description: 'Earned $10')

transaction_two = Transaction.create(account_id: 1, amount: 10, kind: 'withdraw', date: DateTime.now, description: 'Owed friend $10')
