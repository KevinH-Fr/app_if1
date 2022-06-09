class Equipe < ApplicationRecord
    has_many :pilotes
    has_one_attached :image
end
