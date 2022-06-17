class EditionsController < ApplicationController
  
    def grille
        @pilotes = Pilote.all
        @divisions = Division.all
    end
    
end


  