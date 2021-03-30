# frozen_string_literal: true

class Transaction < ApplicationRecord
  belongs_to :account
  validates :amount, presence: true
end
