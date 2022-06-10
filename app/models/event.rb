class Event < ApplicationRecord

    def formatted_name
        "#{date} | #{circuit} | #{division}"
      end

end
