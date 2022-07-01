class ClassecuriesController < ApplicationController
  before_action :set_classecury, only: %i[ show edit update destroy ]

  def index
    @classecuries = Classecurie.all
    @divisions = Division.all
    @events = Event.all

    @pilotes = Pilote.all
    @equipes = Equipe.all
    @resultats = Resultat.all

    @resultatsFiltres = Resultat.all

      if params[:eventId]
        @eventId = params[:eventId]
        @eventNum = Event.find(@eventId).numero 

        @resultatsFiltres = @resultats.where('event_id <= :event_id',
                    event_id: @eventId)

        @divisionId = Event.find(@eventId).division_id 

        @pilotes = Pilote.all

      else
        @resultats = Resultat.all
        @resultatsFiltres = Resultat.all
       
      end

      respond_to do |format|
        format.html
        format.pdf do
  
         render pdf: "classementEcuries", template: "classecuries/liste", formats: [:html], layout: "pdf"
        end
      end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classecury
      @classecury = Classecurie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def classecury_params
      params.fetch(:classecury, {})
    end


end
