class Pad < ApplicationRecord
  belongs_to :user
  has_many :keys, dependent: :destroy
end
