class Book < ApplicationRecord
    has_many :bookfolds 
    has_many :folders, through: :bookfolds

    has_many :usebooks
    has_many :users, through: :usebooks
end
