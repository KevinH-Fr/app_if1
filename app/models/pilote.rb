class Pilote < ApplicationRecord
    belongs_to :equipe, :optional => true
end
