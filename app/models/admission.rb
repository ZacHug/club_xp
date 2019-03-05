class Admission < ApplicationRecord
  belongs_to :user
  belongs_to :club
  # belongs_to :table
  monetize :amount_cents
end
