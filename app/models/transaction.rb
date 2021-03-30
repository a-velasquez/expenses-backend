# frozen_string_literal: true

class Transaction < ApplicationRecord
  belongs_to :account
  validates :amount, presence: true
  validates_inclusion_of :kind, in: %w[deposit withdraw] # transaction must be one of two kinds
end
