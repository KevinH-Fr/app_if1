class SharedController < ApplicationController
  
    def classement
        @pilote = Pilote.all
        @equipe = Equipe.all
        @event = Event.all

      

        @resultats = Resultat.all
    
        @events = Event.all

        @q = Resultat.ransack(params[:q])
        @resultats = @q.result(distinct: true)

        @eventActif =  @events.where(id: :event_id)

        respond_to do |format|
            format.html
            format.pdf do
      
              if params[:eventId]
                @eventId = params[:eventId]
                @resultats = Resultat.all.where(event_id: @eventId)
              else
                @resultats = Resultat.all
              end
           #  render pdf: "resultats", template: "resultats/liste", formats: [:html], layout: "pdf"
            end
          end

    end

    def resultat

    end
    
end


  