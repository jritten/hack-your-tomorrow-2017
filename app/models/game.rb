class Game < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
=======
  has_one :checking, through: :user
  has_one :saving, through: :user

  def monthly_income
    @monthly_income = # fixed income deposit to checking
  end

  def monthly_expenses
    @monthly_expenses = # automatic transfer from check to savings to cover autopays
  end

  def tokens_per_dollar_amount(dollar_amount)
    @annual_income = monthly_income * 12
    @budget = @annual_income - monthly_expenses

    @pavailable_income = @budget / monthly_income
    @savings_per_dollar = 1 / @budget
    @cost_per_token = 1 * @savings_per_dollar
    @tokens = (dollar_amount / @cost_per_token.to_f).ceil
  end

  def recommended_purchases
    @per_month = monthly_income * 0.1
    # @per_week = @per_month / 4
    @per_day = (@per_month / 30.to_f).ceil
  end
>>>>>>> development
end
