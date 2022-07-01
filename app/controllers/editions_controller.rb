class EditionsController < ApplicationController
  
    def grille
        @pilotes = Pilote.all
        @divisions = Division.all
    end

    def grilletest1
        @pilotes = Pilote.all
        @pilotes = @pilotes.where(statut: 'actif') 
      
    end

    def grilletest2
        @pilotes = Pilote.all
        @pilotes = @pilotes.where(statut: 'actif') 
      
    end

    def grilletest3

        @pilotes = Pilote.all
      
        @pilotes = @pilotes.where(statut: 'actif') 
        @divisions = Division.all

        @pilotes = Pilote.order(ecurie: :asc)

        @q = Pilote.ransack(params[:q])
        @pilotes = @q.result(distinct: true)
       
      
     
      
    end

  
    
end


  