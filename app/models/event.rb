class Event < ApplicationRecord
  has_one :circuit, :dependent => :destroy

    def formatted_name
        "#{date} | #{circuit_id} | #{division}"
      end

end
