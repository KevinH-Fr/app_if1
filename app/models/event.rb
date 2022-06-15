class Event < ApplicationRecord
  belongs_to :saison, :optional => true
  belongs_to :division, :optional => true

    def formatted_name
        "#{date} | #{circuit_id} | #{division}"
      end

end
