class Game < ApplicationRecord
  belongs_to :user
  has_one :checking, through: :user
  has_one :saving, through: :user

  def monthly_income
    @monthly_income = 1500 # fixed income deposit to checking
  end

  def monthly_expenses
    @monthly_expenses = 1200 # automatic transfer from check to savings to cover autopays
  end

  def tokens_per_dollar_amount(dollar_amount)
    @annual_income = monthly_income * 12
    @monthly_budget = monthly_income - monthly_expenses

    @available_income = (@monthly_budget * 100) / monthly_income
    @savings_per_dollar = 1 / @monthly_budget
    @cost_per_token = 10 * @savings_per_dollar
    @tokens = (dollar_amount / @cost_per_token.to_f).ceil
  end

  def recommended_purchases
    @per_month = monthly_income * 0.1
    # @per_week = @per_month / 4
    @per_day = (@per_month / 30.to_f).ceil
  end
end
