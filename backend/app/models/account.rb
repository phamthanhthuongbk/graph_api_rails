class Account < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :reactions, dependent: :destroy
    has_many :images, dependent: :destroy
    has_many :posts, dependent: :destroy
end
