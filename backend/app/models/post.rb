class Post < ApplicationRecord
    belongs_to :account
    has_many :comments, dependent: :destroy
    has_many :reactions, dependent: :destroy
end
