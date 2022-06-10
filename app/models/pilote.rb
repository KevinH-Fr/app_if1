class Pilote < ApplicationRecord
    belongs_to :equipe, :optional => true
    has_many :resultats
end
