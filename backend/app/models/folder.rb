class Folder < ApplicationRecord
    has_many :bookfolds
    has_many :books, through: :bookfolds

    has_many :usefolds
    has_many :users, through: :usefolds
end
