class Bookfold < ApplicationRecord
  belongs_to :folder
  belongs_to :book
end
