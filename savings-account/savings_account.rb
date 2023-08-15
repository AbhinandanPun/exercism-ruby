module SavingsAccount
  def self.interest_rate(balance)
    if balance>=0 and balance<1000
      0.500
    elsif balance>=1000 and balance<5000
      1.621
    elsif balance>=5000
      2.475
    else
      3.213
    end
  end

  def self.annual_balance_update(balance)
    balance + (balance * interest_rate(balance) / 100)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    no_of_years = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      no_of_years += 1
    end
    no_of_years
  end
end
