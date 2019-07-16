class User < ApplicationRecord
    has_many :usefolds
    has_many :folders, through: :usefolds

    has_many :usebooks
    has_many :books, through: :usebooks
end
