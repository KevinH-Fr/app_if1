class Resultat < ApplicationRecord
    belongs_to :pilote, :optional => true
end
