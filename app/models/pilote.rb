class Pilote < ApplicationRecord
    belongs_to :equipe, :optional => true
    belongs_to :division, :optional => true
    has_many :resultats, :dependent => :delete_all 
end
