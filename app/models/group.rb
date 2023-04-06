class Group < ApplicationRecord
    has_many :users
    has_many :expenses, dependent: :destroy
end
