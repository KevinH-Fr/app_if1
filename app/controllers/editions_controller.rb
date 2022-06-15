class EditionsController < ApplicationController
  
    def grille
        @pilotes = Pilote.all
    end

  end
  