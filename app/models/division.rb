class Division < ApplicationRecord
    has_many :events, :dependent => :delete_all
end
