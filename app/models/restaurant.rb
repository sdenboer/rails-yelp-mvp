class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy

    validates :address, presence: true
    validates :name, presence: true
    validates :category, inclusion: { in: %w(italian chinese french japanese belgian)}
end
